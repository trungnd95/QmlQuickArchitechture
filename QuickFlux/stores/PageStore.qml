pragma Singleton
import QtQuick 2.0
import ActionTypes 1.0
Item {
    property int activePageIndex: 0
    Connections {
        target: AppDispatcher
        onDispatched: {
            var currentPage = activePageIndex;
            switch(action) {
                case ActionTypes.goPage:
                    activePageIndex = args.pageIndex;
                    break;
                case ActionTypes.goNextPage:
                    activePageIndex = (currentPage < 4) ? currentPage + 1 : currentPage;
                    break;
                case ActionTypes.goPrevPage:
                    activePageIndex = (currentPage > 0) ? currentPage - 1 : currentPage;
                    break;
                default:
                    break;
            }
        }
    }
}
