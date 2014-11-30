.class public Lcom/dolphin/browser/push/b/r;
.super Ljava/lang/Object;
.source "MessageExcutorFactory.java"


# direct methods
.method public static a(Lcom/dolphin/browser/push/v;)Lcom/dolphin/browser/push/b/j;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 78
    :goto_0
    return-object v0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/push/v;->b()I

    move-result v1

    .line 17
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 19
    :pswitch_1
    new-instance v0, Lcom/dolphin/browser/push/b/b;

    invoke-direct {v0}, Lcom/dolphin/browser/push/b/b;-><init>()V

    goto :goto_0

    .line 23
    :pswitch_2
    new-instance v0, Lcom/dolphin/browser/push/b/g;

    invoke-direct {v0}, Lcom/dolphin/browser/push/b/g;-><init>()V

    goto :goto_0

    .line 27
    :pswitch_3
    new-instance v0, Lcom/dolphin/browser/push/b/t;

    invoke-direct {v0}, Lcom/dolphin/browser/push/b/t;-><init>()V

    goto :goto_0

    .line 31
    :pswitch_4
    new-instance v0, Lcom/dolphin/browser/push/b/v;

    invoke-direct {v0}, Lcom/dolphin/browser/push/b/v;-><init>()V

    goto :goto_0

    .line 35
    :pswitch_5
    new-instance v0, Lcom/dolphin/browser/push/b/l;

    invoke-direct {v0}, Lcom/dolphin/browser/push/b/l;-><init>()V

    goto :goto_0

    .line 39
    :pswitch_6
    new-instance v0, Lcom/dolphin/browser/push/b/n;

    invoke-direct {v0}, Lcom/dolphin/browser/push/b/n;-><init>()V

    goto :goto_0

    .line 43
    :pswitch_7
    new-instance v0, Lcom/dolphin/browser/push/b/a;

    invoke-direct {v0}, Lcom/dolphin/browser/push/b/a;-><init>()V

    goto :goto_0

    .line 47
    :pswitch_8
    new-instance v0, Lcom/dolphin/browser/push/b/e;

    invoke-direct {v0}, Lcom/dolphin/browser/push/b/e;-><init>()V

    goto :goto_0

    .line 51
    :pswitch_9
    new-instance v0, Lcom/dolphin/browser/push/b/s;

    invoke-direct {v0}, Lcom/dolphin/browser/push/b/s;-><init>()V

    goto :goto_0

    .line 55
    :pswitch_a
    new-instance v0, Lcom/dolphin/browser/push/b/d;

    invoke-direct {v0}, Lcom/dolphin/browser/push/b/d;-><init>()V

    goto :goto_0

    .line 59
    :pswitch_b
    new-instance v0, Lcom/dolphin/browser/push/b/u;

    invoke-direct {v0}, Lcom/dolphin/browser/push/b/u;-><init>()V

    goto :goto_0

    .line 63
    :pswitch_c
    new-instance v0, Lcom/dolphin/browser/push/b/m;

    invoke-direct {v0}, Lcom/dolphin/browser/push/b/m;-><init>()V

    goto :goto_0

    .line 67
    :pswitch_d
    new-instance v0, Lcom/dolphin/browser/push/b/c;

    invoke-direct {v0}, Lcom/dolphin/browser/push/b/c;-><init>()V

    goto :goto_0

    .line 71
    :pswitch_e
    new-instance v0, Lcom/dolphin/browser/push/b/q;

    invoke-direct {v0}, Lcom/dolphin/browser/push/b/q;-><init>()V

    goto :goto_0

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_6
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
