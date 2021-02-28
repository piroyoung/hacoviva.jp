from typing import List

from jinja2 import Environment
from jinja2 import FileSystemLoader
from jinja2 import select_autoescape

from dataclasses import dataclass


@dataclass(frozen=True)
class Renderer:
    environment: Environment

    @classmethod
    def of_default(cls):
        return cls(
            environment=Environment(
                loader=FileSystemLoader("templates"),
                autoescape=select_autoescape(["html"])
            )
        )

    def render(self, filename: str, *args, **kwargs) -> str:
        return self.environment.get_template(filename).render()


pages: List[str] = [
    "index.html",
    "profile.html"
]


if __name__ == "__main__":
    r = Renderer.of_default()
    for p in pages:
        with open(f"rendered/{p}", "w") as out:
            out.write(r.render(p))



