package com.example.venitas.fandlapplication.Activity;

import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;

import com.example.venitas.fandlapplication.R;

public class FoundActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_found);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setTitle("上交方式");
        setSupportActionBar(toolbar);


    }

}
