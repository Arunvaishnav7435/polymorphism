# polymorphism
<!DOCTYPE html>
<html>
<head>
    
</head>
<body>

<h1>SystemVerilog Parity Generator using Polymorphism</h1>

<h2>Overview</h2>
<p>This repository contains SystemVerilog code demonstrating the use of polymorphism to calculate even and odd parities. The code is structured around a parent class <code>parity</code> and two child classes <code>even_parity</code> and <code>odd_parity</code>, which extend the functionality of the parent class to calculate specific types of parity.</p>

<h2>Prerequisites</h2>
<ul>
    <li>Knowledge of SystemVerilog and Object-Oriented Programming concepts.</li>
    <li>An appropriate SystemVerilog simulator (e.g., ModelSim, VCS, etc.) for running simulations.</li>
</ul>

<h2>File Structure</h2>
<p><code>parity.sv</code>: Contains the declaration and implementation of the <code>parity</code>, <code>even_parity</code>, and <code>odd_parity</code> classes along with the test module <code>test</code>.</p>

<h2>Usage</h2>
<p>To use this code:</p>
<ol>
    <li>Clone the repository to your local machine.</li>
    <li>Open the <code>parity.sv</code> file in your SystemVerilog simulator.</li>
    <li>Compile and run the simulation.</li>
    <li>Observe the output for even or odd parity calculation, based on the active class object.</li>
</ol>

<h2>Example</h2>
<p>In the <code>test</code> module, an object of either <code>even_parity</code> or <code>odd_parity</code> is created and used to calculate the parity of the given data (8'b11000001). The type of parity generated depends on which child class's object is assigned to the parent class handle.</p>

<a href = "https://edaplayground.com/x/DtHd">Click here to open the code in EDA Playground.</a>
</body>
</html>
