// ********** Swap two variables ***********
// Short Description: ....
// @params1: string
// @params2: string
// @return
//
function swapState(state1, state2)
{
    return [state2, state1];
}


// Short Description: ....
// @params1: string
// @return
//
function convertData(text)
{
    if(text === "512Kb")
    {
        return 512000;
    }
    if(text === "128Kb")
    {
        return 128000;
    }
    if(text === "384Kb")
    {
        return 384000;
    }
    if(text === "256Kb")
    {
        return 256000;
    }
    if(text === "H265")
    {
        return 1;
    }

    if(text === "H264")
    {
        return 0;
    }
    return text;
}

// Short Description: ....
// @params1: number
// @params2: function
// @return
//
function convertCodec(codecType)
{
    if(codecType === 1)
    {
        return "H265";
    }
    if(codecType === 0)
    {
        return "H264";
    }
}

// Short Description: ....
// @params1: bwInt
// @return
//
function convertBw(bwInt)
{
    if(bwInt === 512000)
    {
        return "512Kb";
    }
    if(bwInt === 384000)
    {
        return "384Kb";
    }
    if(bwInt === 256000)
    {
        return "256Kb";
    }
    if(bwInt === 128000)
    {
        return "128Kb";
    }
}

// Short Description: ....
// @params1: resolEnum
// @return
//
function convertResol(resolEnum)
{
    if(resolEnum === 2)
    {
        return "HD";
    }
    if(resolEnum === 3)
    {
        return "VGA";
    }
    if(resolEnum === 4)
    {
        return "Mini-VGA";
    }
}

// Short Description: ....
// @params1: resolText
// @return
//
function convertBackResol(resolText) {
    if(resolText === "HD")
    {
        return 2;
    }
    if(resolText === "VGA")
    {
        return 3;
    }
    if(resolText === "Mini-VGA")
    {
        return 4;
    }
}


// Short Description: ....
// @params1: number
// @params2: function
// @return
//
function delay(delayTime, cb) {
    timer = new Timer();
    timer.interval = delayTime;
    timer.repeat = false;
    timer.triggered.connect(cb);
    timer.start();
}

// Short Description: ....
// @params1: milliseconds
// @return
//
function sleep(milliseconds) {
  var start = new Date().getTime();
  for (var i = 0; i < 1e7; i++) {
    if ((new Date().getTime() - start) > milliseconds){
      break;
    }
  }
}

// Short Description: ....
// @params1: camInfoModel
// @params2: camInfoObj
// @return
//
function camInfosBinding(camInfoModel, camInfoObj) {
    var keys = Object.keys(camInfoObj);
    for(var i = 0; i < keys.length; i++) {
        camInfoModel[keys[i]] = camInfoObj[keys[i]];
    }
}




