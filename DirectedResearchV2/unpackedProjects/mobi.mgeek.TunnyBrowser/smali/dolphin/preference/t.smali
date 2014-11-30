.class Ldolphin/preference/t;
.super Landroid/os/Handler;
.source "PreferenceActivity.java"


# instance fields
.field final synthetic a:Ldolphin/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Ldolphin/preference/PreferenceActivity;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Ldolphin/preference/t;->a:Ldolphin/preference/PreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v0, p0, Ldolphin/preference/t;->a:Ldolphin/preference/PreferenceActivity;

    invoke-static {v0}, Ldolphin/preference/PreferenceActivity;->a(Ldolphin/preference/PreferenceActivity;)V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
