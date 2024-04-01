from flask_sqlalchemy import SQLAlchemy
from flask_login import UserMixin
from werkzeug.security import generate_password_hash, check_password_hash

db = SQLAlchemy()

class User(UserMixin, db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(50), unique=True, nullable=False)
    password_hash = db.Column(db.String(256), nullable=False)
    is_admin = db.Column(db.Boolean, default=False)  # Flag to identify admin users
    # Define the one-to-many relationship with Portfolio
    portfolios = db.relationship('Portfolio', backref='user', lazy=True)

    def __init__(self, username, password_hash, is_admin=False):
        self.username = username
        self.password_hash = password_hash
        self.is_admin = is_admin

    def set_password(self, password):
        self.password_hash = generate_password_hash(password)

    def check_password(self, password):
        return check_password_hash(self.password_hash, password)

    
class Portfolio(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    user_id = db.Column(db.Integer, db.ForeignKey('user.id'), nullable=False)
    fund_id = db.Column(db.Integer, db.ForeignKey('mutual_fund.id'), nullable=False) 
    amount = db.Column(db.Float, nullable=False)
    duration = db.Column(db.Integer, nullable=False)
    fund = db.relationship('MutualFund', backref='portfolio')


class MutualFund(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100), nullable=False)
    fund_type = db.Column(db.String(50), nullable=False)
    nav = db.Column(db.Float, nullable=False)
    returns = db.Column(db.Float, nullable=False)
    risk_tolerance = db.Column(db.String(50), nullable=True)