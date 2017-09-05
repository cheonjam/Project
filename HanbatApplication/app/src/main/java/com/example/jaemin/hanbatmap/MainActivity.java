package com.example.jaemin.hanbatmap;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
      setContentView(R.layout.activity_main);
      }

    public void onClick(View view) {
        Intent intent = null;
        switch(view.getId()) {
            case R.id.icon1 :
                intent = new Intent(MainActivity.this, MapActivity.class);
                startActivity(intent);
                break;

            case R.id.icon2 :
                intent = new Intent(MainActivity.this, CallActivity.class);
                startActivity(intent);
                break;

            case R.id.icon3 :
                intent=new Intent(Intent.ACTION_VIEW,
                        Uri.parse("http://m.hanbat.ac.kr/html/kr/university/university.html"));
                startActivity(intent);
                break;

            case R.id.icon4 :
                intent=new Intent(Intent.ACTION_VIEW,
                        Uri.parse("http://m.hanbat.ac.kr/html/kr/board/board.html"));
                startActivity(intent);
                break;

            case R.id.icon5 :
                intent=new Intent(Intent.ACTION_VIEW,
                        Uri.parse("http://m.job.hanbat.ac.kr"));
                startActivity(intent);
                break;

            case R.id.icon6 :
                intent=new Intent(Intent.ACTION_VIEW,
                        Uri.parse("http://m.hanbat.ac.kr/html/kr/iphak/iphak.html"));
                startActivity(intent);
                break;
        }
    }
}
