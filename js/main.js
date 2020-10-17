(() => {

    //make an ajax request using the fetch API
    fetch('./data/classData.json')
    .then(res = res.json())
    .then(data => {
        debugger;
        console.log(data);
        // handlesData
        // here's where you would call the function that
        //puts the piecies on the page.
    })
    .catch((err) => {
        console.log(err);
    })
})();