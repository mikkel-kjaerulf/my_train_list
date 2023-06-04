from flask.cli import FlaskGroup

from project import app

import subprocess

cli = FlaskGroup(app)


@cli.command("create_db")
def create_db():
    subprocess.run(["psql", "-U", "postgres", "-d", "postgres", "-f", "train_list.sql"])


if __name__ == "__main__":
    cli()
