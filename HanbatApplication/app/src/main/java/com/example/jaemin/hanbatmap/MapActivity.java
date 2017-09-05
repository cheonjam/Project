package com.example.jaemin.hanbatmap;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

public class MapActivity extends AppCompatActivity {

    Intent intent = null;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_map);
    }

    public void onClick(View view) {
        Intent intent = null;
        switch(view.getId()) {
            case R.id.N1 :
                intent = new Intent(MapActivity.this, N1Activity.class);
                startActivity(intent);
                break;
            case R.id.N2 :
                intent = new Intent(MapActivity.this, N2Activity.class);
                startActivity(intent);
                break;
            case R.id.N3 :
                intent = new Intent(MapActivity.this, N3Activity.class);
                startActivity(intent);
                break;
            case R.id.N4 :
                intent = new Intent(MapActivity.this, N4Activity.class);
                startActivity(intent);
                break;
            case R.id.N5 :
                intent = new Intent(MapActivity.this, N5Activity.class);
                startActivity(intent);
                break;
            case R.id.N6 :
                intent = new Intent(MapActivity.this, N6Activity.class);
                startActivity(intent);
                break;
            case R.id.N7 :
                intent = new Intent(MapActivity.this, N7Activity.class);
                startActivity(intent);
                break;
            case R.id.N8 :
                intent = new Intent(MapActivity.this, N8Activity.class);
                startActivity(intent);
                break;
            case R.id.S1 :
                intent = new Intent(MapActivity.this, S1Activity.class);
                startActivity(intent);
                break;
            case R.id.S2 :
                intent = new Intent(MapActivity.this, S2Activity.class);
                startActivity(intent);
                break;
            case R.id.S3 :
                intent = new Intent(MapActivity.this, S3Activity.class);
                startActivity(intent);
                break;
            case R.id.S4 :
                intent = new Intent(MapActivity.this, S4Activity.class);
                startActivity(intent);
                break;
            case R.id.S5 :
                intent = new Intent(MapActivity.this, S5Activity.class);
                startActivity(intent);
                break;
            case R.id.S6 :
                intent = new Intent(MapActivity.this, S6Activity.class);
                startActivity(intent);
                break;
            case R.id.S7 :
                intent = new Intent(MapActivity.this, S7Activity.class);
                startActivity(intent);
                break;
            case R.id.S8 :
                intent = new Intent(MapActivity.this, S8Activity.class);
                startActivity(intent);
                break;
            case R.id.S10 :
                intent = new Intent(MapActivity.this, S10Activity.class);
                startActivity(intent);
                break;
        }
    }
}
