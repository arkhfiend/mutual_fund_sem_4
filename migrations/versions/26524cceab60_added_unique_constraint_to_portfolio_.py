"""Added unique constraint to Portfolio model

Revision ID: 26524cceab60
Revises: 14e13b28e6dd
Create Date: 2024-04-25 16:06:53.445053

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '26524cceab60'
down_revision = '14e13b28e6dd'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('portfolio', schema=None) as batch_op:
        batch_op.create_unique_constraint('user_fund_unique', ['user_id', 'fund_id'])

    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('portfolio', schema=None) as batch_op:
        batch_op.drop_constraint('user_fund_unique', type_='unique')

    # ### end Alembic commands ###
