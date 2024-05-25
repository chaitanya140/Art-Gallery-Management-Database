-- Create the tables for the art gallery database
CREATE TABLE Artists (
  ArtistID INT PRIMARY KEY AUTO_INCREMENT,
  ArtistName VARCHAR(255) NOT NULL
);

CREATE TABLE ArtTypes (
  ArtTypeID INT PRIMARY KEY AUTO_INCREMENT,
  ArtTypeName VARCHAR(255) NOT NULL
);

CREATE TABLE ArtMediums (
  ArtMediumID INT PRIMARY KEY AUTO_INCREMENT,
  ArtMediumName VARCHAR(255) NOT NULL
);

CREATE TABLE ArtProducts (
  ArtProductID INT PRIMARY KEY AUTO_INCREMENT,
  ArtistID INT NOT NULL,
  ArtTypeID INT NOT NULL,
  ArtMediumID INT NOT NULL,
  ProductName VARCHAR(255) NOT NULL,
  Price DECIMAL(10, 2) NOT NULL,
  Description TEXT,
  FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID),
  FOREIGN KEY (ArtTypeID) REFERENCES ArtTypes(ArtTypeID),
  FOREIGN KEY (ArtMediumID) REFERENCES ArtMediums(ArtMediumID)
);

CREATE TABLE Enquiries (
  EnquiryID INT PRIMARY KEY AUTO_INCREMENT,
  ArtProductID INT NOT NULL,
  EnquiryDate DATE NOT NULL,
  EnquiryText TEXT NOT NULL,
  IsAnswered BOOLEAN DEFAULT FALSE,
  AnswerText TEXT,
  FOREIGN KEY (ArtProductID) REFERENCES ArtProducts(ArtProductID)
);

-- Insert the data into the tables based on the image
-- The image shows that there is 1 artist, 1 art type, and 1 art medium, but no art products and no enquiries
INSERT INTO Artists (ArtistName) VALUES ('Unknown Artist');

INSERT INTO ArtTypes (ArtTypeName) VALUES ('Unknown Art Type');

INSERT INTO ArtMediums (ArtMediumName) VALUES ('Unknown Art Medium');