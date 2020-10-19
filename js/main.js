(() => {
    let myReq = new XMLHttpRequest;
    // make sure we can handle whatever data comes back, or any errors
    myReq.addEventListener("readystatechange", handleRequest);

    // open a request and pass thru the URL of the data that we want
    myReq.open('GET', '../DataSet.json');

    // actually make the request
    myReq.send();

    // handleRequest function goes here
    function handleRequest() {
        debugger;
        if (myReq.readyState === XMLHttpRequest.DONE) {
            debugger;
            // check status here and proceed
            if (myReq.status === 200) {
                // 200 means done and dusted, ready to go with the dataset!

                handleDataSet(JSON.parse(myReq.responseText));

            } else {
                // probably got some kind of error code, so handle that 
                // a 404, 500 etc... can render appropriate error messages here
                console.error(`${myReq.status} : something done broke, son`);
            }
        } else {
            debugger;
            // request isn't ready yet, keep waiting...
            console.log(`Request state: ${myReq.readyState}. Still processing...`);
        }

    }

    //make an ajax request using the fetch API
    fetch('./data/classData.json')
    .then(res => res.json())
    .then(data => {
        debugger;
       
        loadDataSet(data);
        // handlesData
        // here's where you would call the function that
        //puts the piecies on the page.
    })
    
    function loadDataSet(data) {
        let profname = document.querySelector('.profPanelText .profName'),
            courseName = document.querySelector('.profPanelText .text-muted'),
            time = document.querySelector('.profPanelText .list-inline');
        
            courseName.innerHTML = classData.coursename + classData.coursecode;
            time.innerHTML = classData.classtime[0] + classData.classtime[1];
        }
    
    
})();