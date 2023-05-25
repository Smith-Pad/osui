//  ██████      ███████     ██    ██     ██                                                           
// ██    ██     ██          ██    ██     ██                                                           
// ██    ██     ███████     ██    ██     ██                                                           
// ██    ██          ██     ██    ██     ██                                                           
//  ██████      ███████      ██████      ██                                                           
//                                              

//  Operating System User Interface. 



use std::fs::File;
use std::io::{Read, Write};
use std::net::{TcpListener, TcpStream};
use std::thread;

fn handle_client(mut stream: TcpStream) {
    let mut buffer = [0; 1024];
    stream.read(&mut buffer).unwrap();

    let response = "HTTP/1.1 200 OK\r\nContent-Type: text/html; charset=UTF-8\r\n\r\n";

    let mut file = File::open("index.html").unwrap();
    let mut contents = String::new();
    file.read_to_string(&mut contents).unwrap();

    let response = format!("{}{}", response, contents);

    let response = response.as_bytes();

    stream.write(response).unwrap();
    stream.flush().unwrap();
}

fn main() {
    let listener = TcpListener::bind("localhost:8000").unwrap();

    for stream in listener.incoming() {
        let stream = stream.unwrap();

        thread::spawn(|| {
            handle_client(stream);
        });
    }
}
