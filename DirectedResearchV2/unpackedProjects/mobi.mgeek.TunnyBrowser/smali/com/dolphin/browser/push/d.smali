.class Lcom/dolphin/browser/push/d;
.super Ljava/lang/Object;
.source "DefaultPushDataProcesser.java"

# interfaces
.implements Lcom/dolphin/browser/push/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 50
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 51
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dolphin/browser/push/ActionPushDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    const-string v2, "action_content"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v2, "push_type"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/h;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/h;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 61
    if-nez p1, :cond_1

    .line 74
    :cond_0
    return-object v6

    .line 64
    :cond_1
    const-wide/16 v1, 0x0

    .line 65
    const/4 v0, 0x0

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 66
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/data/h;

    .line 67
    new-instance v4, Lcom/dolphin/browser/push/e;

    invoke-direct {v4, p0, v0, p2}, Lcom/dolphin/browser/push/e;-><init>(Lcom/dolphin/browser/push/d;Lcom/dolphin/browser/push/data/h;Z)V

    invoke-static {v4, v2, v3}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;J)V

    .line 72
    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    .line 65
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/push/data/h;Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 29
    if-nez p1, :cond_0

    .line 46
    :goto_0
    return v0

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/dolphin/browser/push/data/h;->a()I

    move-result v1

    .line 34
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 37
    :sswitch_0
    invoke-virtual {p1}, Lcom/dolphin/browser/push/data/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/provider/Browser;->d(Ljava/lang/String;)V

    .line 46
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 41
    :sswitch_1
    invoke-virtual {p1}, Lcom/dolphin/browser/push/data/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/push/d;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 34
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method
