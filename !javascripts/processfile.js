const fs = require('fs');

let inputFilePath = 'helloworld.output.txt';
let outputFilePath = 'output.txt';

console.log( 'Attempting to read from file "' + inputFilePath + '" and write to file "' + outputFilePath + '"' );

fs.readFile(
    inputFilePath, 'utf8', (err, data) =>
    {
        if (err) {
            console.error('Error reading the file:', err);
            return;
        }
        console.log( 'Number of characters read:', data.length );

        // ================================================================ 
        // File processing logic
        // ================================================================ 

        let data2 = data.replace( 'World', 'Mondo' );
        console.log( "Replacement complete" );

        // ================================================================ 

        fs.writeFile(
            outputFilePath, data2, 'utf8', (err) =>
            {
                if (err) {
                    console.error('Error writing to the file:', err);
                    return;
                }
            }
        );
        

    
    }
);

