% Ethan LC - Purdue AAE '25
% Description: Plots streamlines, streaklines and pathlines
% for a defined velocity field. 
clear; 
clc; 
close all;

%% Define the velocity field vector components
w = 2*pi;
u = @(x,y,t) 0.5 + 0.5*x*t;
v = @(x,y,t) 1.5 - 0.5*y - 2*cos(w*t);

%% Define the plot domain
xmin    = 0; %leftmost x bound
xmax    = 3; %rightmost x bound
ymin    = 0; %bottommost y bound
ymax    = 3; %topmost y bound
LineCount       = 10; %

%% Time span for visualization
tsim = 2; %simulation time domain
dt = .05; %step size

%% Intial position of infinitessimal fluid element
x0 = 0.25; y0 = 1.5;


%% Plot Streamlines, Streaklines and Pathlines
field_line_plotter(u,v,x0,y0,xmin,xmax,ymin,ymax,LineCount,tsim,dt)