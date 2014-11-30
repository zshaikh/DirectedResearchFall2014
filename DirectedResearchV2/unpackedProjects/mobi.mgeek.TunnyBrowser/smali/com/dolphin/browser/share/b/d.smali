.class public Lcom/dolphin/browser/share/b/d;
.super Lcom/dolphin/browser/share/b/k;
.source "BuiltinSharePlatformFactory.java"


# direct methods
.method public static a(I)Lcom/dolphin/browser/share/b/c;
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    .line 8
    packed-switch p0, :pswitch_data_0

    .line 33
    :goto_0
    return-object v0

    .line 10
    :pswitch_0
    new-instance v0, Lcom/dolphin/browser/share/b/h;

    invoke-direct {v0}, Lcom/dolphin/browser/share/b/h;-><init>()V

    goto :goto_0

    .line 14
    :pswitch_1
    new-instance v0, Lcom/dolphin/browser/share/b/n;

    invoke-direct {v0}, Lcom/dolphin/browser/share/b/n;-><init>()V

    goto :goto_0

    .line 18
    :pswitch_2
    new-instance v0, Lcom/dolphin/browser/share/b/f;

    invoke-direct {v0}, Lcom/dolphin/browser/share/b/f;-><init>()V

    goto :goto_0

    .line 22
    :pswitch_3
    new-instance v0, Lcom/dolphin/browser/share/b/a;

    invoke-direct {v0}, Lcom/dolphin/browser/share/b/a;-><init>()V

    goto :goto_0

    .line 26
    :pswitch_4
    new-instance v0, Lcom/dolphin/browser/share/b/e;

    invoke-direct {v0}, Lcom/dolphin/browser/share/b/e;-><init>()V

    goto :goto_0

    .line 8
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
