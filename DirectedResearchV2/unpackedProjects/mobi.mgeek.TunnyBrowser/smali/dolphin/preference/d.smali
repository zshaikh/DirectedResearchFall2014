.class Ldolphin/preference/d;
.super Landroid/os/Handler;
.source "ExpandablePreferenceActivity.java"


# instance fields
.field final synthetic a:Ldolphin/preference/ExpandablePreferenceActivity;


# direct methods
.method constructor <init>(Ldolphin/preference/ExpandablePreferenceActivity;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Ldolphin/preference/d;->a:Ldolphin/preference/ExpandablePreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Ldolphin/preference/d;->a:Ldolphin/preference/ExpandablePreferenceActivity;

    invoke-static {v0}, Ldolphin/preference/ExpandablePreferenceActivity;->a(Ldolphin/preference/ExpandablePreferenceActivity;)V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
