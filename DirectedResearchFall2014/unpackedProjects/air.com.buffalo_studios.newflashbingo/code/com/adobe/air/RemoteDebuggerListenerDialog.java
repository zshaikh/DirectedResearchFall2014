package com.adobe.air;

import java.net.*;
import android.app.*;
import android.os.*;
import android.content.*;
import android.view.*;

public class RemoteDebuggerListenerDialog extends Activity
{
    private final String LOG_TAG;
    private int count;
    private int debuggerPort;
    private Activity mActivity;
    private Runnable mCheckAgain;
    private Handler mHandler;
    private BroadcastReceiver mReceiver;
    private AlertDialog mWaitDialog;
    
    public RemoteDebuggerListenerDialog() {
        super();
        this.debuggerPort = -1;
        this.count = 0;
        this.mHandler = new Handler();
        this.mWaitDialog = null;
        this.mCheckAgain = null;
        this.mActivity = null;
        this.LOG_TAG = this.getClass().getName();
    }
    
    private void closeListeningDebuggerSocket() {
        new AsyncTask<Integer, Integer, Integer>() {
            protected Integer doInBackground(final Integer... array) {
                try {
                    new Socket(InetAddress.getLocalHost(), array[0]).close();
                    return 0;
                }
                catch (Exception ex) {
                    return 0;
                }
            }
        }.execute((Object[])new Integer[] { this.debuggerPort });
    }
    
    private AlertDialog createDialog(final CharSequence title, final CharSequence message, final CharSequence charSequence, final DialogInterface$OnClickListener dialogInterface$OnClickListener, final DialogInterface$OnKeyListener onKeyListener) {
        final AlertDialog create = new AlertDialog$Builder((Context)this.mActivity).create();
        create.setTitle(title);
        create.setMessage(message);
        create.setButton(-1, charSequence, dialogInterface$OnClickListener);
        create.setOnKeyListener(onKeyListener);
        create.setCancelable(true);
        return create;
    }
    
    private void dismissDialog() {
        if (this.mWaitDialog != null) {
            this.mWaitDialog.cancel();
        }
        if (this.mReceiver != null) {
            this.unregisterReceiver(this.mReceiver);
        }
        this.mReceiver = null;
        this.mHandler.removeCallbacks(this.mCheckAgain);
        this.mActivity.finish();
    }
    
    public void onCreate(final Bundle bundle) {
        final String string = this.getString(2131165212);
        final String string2 = this.getString(2131165213);
        (this.mActivity = this).onCreate(bundle);
        final Bundle extras = this.getIntent().getExtras();
        int int1;
        if (extras != null) {
            int1 = extras.getInt("debuggerPort");
        }
        else {
            int1 = 7936;
        }
        this.debuggerPort = int1;
        this.mWaitDialog = new AlertDialog$Builder((Context)this).create();
        final String format = String.format(string, 60);
        this.mReceiver = new BroadcastReceiver() {
            public void onReceive(final Context context, final Intent intent) {
                if (!this.isInitialStickyBroadcast()) {
                    final Bundle extras = RemoteDebuggerListenerDialog.this.getIntent().getExtras();
                    int int1;
                    if (extras != null) {
                        int1 = extras.getInt("debuggerPort");
                    }
                    else {
                        int1 = 7936;
                    }
                    if (int1 == RemoteDebuggerListenerDialog.this.debuggerPort) {
                        RemoteDebuggerListenerDialog.this.dismissDialog();
                    }
                }
            }
        };
        final IntentFilter intentFilter = new IntentFilter("android.intent.action.MAIN");
        intentFilter.addCategory("RemoteDebuggerListenerDialogClose");
        this.registerReceiver(this.mReceiver, intentFilter);
        this.mWaitDialog = this.createDialog(this.getString(2131165210), format, this.getString(2131165190), (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
            public void onClick(final DialogInterface dialogInterface, final int n) {
                RemoteDebuggerListenerDialog.this.mHandler.removeCallbacks(RemoteDebuggerListenerDialog.this.mCheckAgain);
                RemoteDebuggerListenerDialog.this.closeListeningDebuggerSocket();
                RemoteDebuggerListenerDialog.this.unregisterReceiver(RemoteDebuggerListenerDialog.this.mReceiver);
                RemoteDebuggerListenerDialog.this.mReceiver = null;
                dialogInterface.cancel();
                RemoteDebuggerListenerDialog.this.finish();
            }
        }, (DialogInterface$OnKeyListener)new DialogInterface$OnKeyListener() {
            public boolean onKey(final DialogInterface dialogInterface, final int n, final KeyEvent keyEvent) {
                if (n == 4) {
                    RemoteDebuggerListenerDialog.this.mHandler.removeCallbacks(RemoteDebuggerListenerDialog.this.mCheckAgain);
                    RemoteDebuggerListenerDialog.this.closeListeningDebuggerSocket();
                    RemoteDebuggerListenerDialog.this.unregisterReceiver(RemoteDebuggerListenerDialog.this.mReceiver);
                    RemoteDebuggerListenerDialog.this.mReceiver = null;
                    dialogInterface.cancel();
                    RemoteDebuggerListenerDialog.this.finish();
                }
                return false;
            }
        });
        this.count = 0;
        this.mCheckAgain = new Runnable() {
            @Override
            public void run() {
                if (RemoteDebuggerListenerDialog.this.count < 60) {
                    final String format = String.format(string, 60 - RemoteDebuggerListenerDialog.this.count);
                    RemoteDebuggerListenerDialog.this.count++;
                    RemoteDebuggerListenerDialog.this.mWaitDialog.setMessage((CharSequence)format);
                    RemoteDebuggerListenerDialog.this.mHandler.postDelayed((Runnable)this, 1000L);
                    return;
                }
                RemoteDebuggerListenerDialog.this.mHandler.removeCallbacks((Runnable)this);
                RemoteDebuggerListenerDialog.this.mWaitDialog.cancel();
                if (RemoteDebuggerListenerDialog.this.mReceiver != null) {
                    RemoteDebuggerListenerDialog.this.unregisterReceiver(RemoteDebuggerListenerDialog.this.mReceiver);
                    RemoteDebuggerListenerDialog.this.mReceiver = null;
                }
                final DialogInterface$OnClickListener dialogInterface$OnClickListener = (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                    public void onClick(final DialogInterface dialogInterface, final int n) {
                        RemoteDebuggerListenerDialog.this.closeListeningDebuggerSocket();
                        dialogInterface.cancel();
                        RemoteDebuggerListenerDialog.this.finish();
                    }
                };
                RemoteDebuggerListenerDialog.this.mWaitDialog = RemoteDebuggerListenerDialog.this.createDialog("Adobe AIR", string2, RemoteDebuggerListenerDialog.this.getString(2131165191), (DialogInterface$OnClickListener)dialogInterface$OnClickListener, (DialogInterface$OnKeyListener)new DialogInterface$OnKeyListener() {
                    public boolean onKey(final DialogInterface dialogInterface, final int n, final KeyEvent keyEvent) {
                        if (n == 4) {
                            ((DialogInterface$OnClickListener)dialogInterface$OnClickListener).onClick(dialogInterface, -1);
                        }
                        return false;
                    }
                });
                RemoteDebuggerListenerDialog.this.mWaitDialog.show();
            }
        };
        this.mHandler.postDelayed(this.mCheckAgain, 1000L);
        this.mWaitDialog.show();
    }
    
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        if (n == 4) {
            this.closeListeningDebuggerSocket();
            this.dismissDialog();
        }
        return super.onKeyDown(n, keyEvent);
    }
    
    public void onStop() {
        this.closeListeningDebuggerSocket();
        this.dismissDialog();
        super.onStop();
    }
    
    private enum DialogState
    {
        StateRuntimeNotReady, 
        StateRuntimeTimedOut, 
        StateRuntimeWaitingForDebugger;
    }
}
