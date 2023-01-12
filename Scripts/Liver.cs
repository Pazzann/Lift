using Godot;
using System;

public class Liver : Node
{
    private float _timeSinceSpawn = 0.0f;

    private float _happyTime;

    private float _timeInQueue;
    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
    {
        
    }

    // Called every frame. 'delta' is the elapsed time since the previous frame.
    public override void _Process(float delta)
    {
        _timeSinceSpawn += delta;
    }

    private void _checkStatus()
    {
        
    }
}