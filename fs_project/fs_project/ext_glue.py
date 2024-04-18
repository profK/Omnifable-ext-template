from typing import Any
from .fable_modules.fable_library.string_ import (to_console, printf)

def ext_on_startup(extid: Any | None=None) -> None:
    to_console(printf("in startup"))


def ext_on_shutdown(__unit: None=None) -> None:
    to_console(printf("in startup"))


__all__ = ["ext_on_startup", "ext_on_shutdown"]

