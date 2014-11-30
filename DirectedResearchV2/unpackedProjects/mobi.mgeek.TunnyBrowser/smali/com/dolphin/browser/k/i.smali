.class public Lcom/dolphin/browser/k/i;
.super Ljava/lang/Object;
.source "ObservableFactory.java"


# direct methods
.method public static a(I)Ljava/util/Observable;
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    .line 10
    packed-switch p0, :pswitch_data_0

    .line 62
    :goto_0
    return-object v0

    .line 12
    :pswitch_0
    new-instance v0, Lcom/dolphin/browser/k/m;

    invoke-direct {v0}, Lcom/dolphin/browser/k/m;-><init>()V

    goto :goto_0

    .line 16
    :pswitch_1
    new-instance v0, Lcom/dolphin/browser/k/n;

    invoke-direct {v0}, Lcom/dolphin/browser/k/n;-><init>()V

    goto :goto_0

    .line 20
    :pswitch_2
    new-instance v0, Lcom/dolphin/browser/k/o;

    invoke-direct {v0}, Lcom/dolphin/browser/k/o;-><init>()V

    goto :goto_0

    .line 24
    :pswitch_3
    new-instance v0, Lcom/dolphin/browser/k/d;

    invoke-direct {v0}, Lcom/dolphin/browser/k/d;-><init>()V

    goto :goto_0

    .line 28
    :pswitch_4
    new-instance v0, Lcom/dolphin/browser/k/c;

    invoke-direct {v0}, Lcom/dolphin/browser/k/c;-><init>()V

    goto :goto_0

    .line 32
    :pswitch_5
    new-instance v0, Lcom/dolphin/browser/k/e;

    invoke-direct {v0}, Lcom/dolphin/browser/k/e;-><init>()V

    goto :goto_0

    .line 36
    :pswitch_6
    new-instance v0, Lcom/dolphin/browser/k/b;

    invoke-direct {v0}, Lcom/dolphin/browser/k/b;-><init>()V

    goto :goto_0

    .line 40
    :pswitch_7
    new-instance v0, Lcom/dolphin/browser/k/k;

    invoke-direct {v0}, Lcom/dolphin/browser/k/k;-><init>()V

    goto :goto_0

    .line 44
    :pswitch_8
    new-instance v0, Lcom/dolphin/browser/k/p;

    invoke-direct {v0}, Lcom/dolphin/browser/k/p;-><init>()V

    goto :goto_0

    .line 48
    :pswitch_9
    new-instance v0, Lcom/dolphin/browser/k/g;

    invoke-direct {v0}, Lcom/dolphin/browser/k/g;-><init>()V

    goto :goto_0

    .line 52
    :pswitch_a
    new-instance v0, Lcom/dolphin/browser/k/f;

    invoke-direct {v0}, Lcom/dolphin/browser/k/f;-><init>()V

    goto :goto_0

    .line 56
    :pswitch_b
    new-instance v0, Lcom/dolphin/browser/k/a;

    invoke-direct {v0}, Lcom/dolphin/browser/k/a;-><init>()V

    goto :goto_0

    .line 10
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
