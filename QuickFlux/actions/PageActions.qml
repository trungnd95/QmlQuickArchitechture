pragma Singleton
import QtQuick 2.0

Item {
    function goToPage(pageIndex) { AppDispatcher.dispatch("goPage", {pageIndex: pageIndex})}
    function goNextPage() { AppDispatcher.dispatch("goNextPage", {})}
    function goPrevPage() { AppDispatcher.dispatch("goPrevPage", {})}
}
