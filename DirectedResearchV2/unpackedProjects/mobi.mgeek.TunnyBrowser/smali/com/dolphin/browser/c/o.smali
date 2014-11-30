.class public Lcom/dolphin/browser/c/o;
.super Lcom/dolphin/browser/c/a;
.source "FeedBackCommand.java"


# instance fields
.field private a:I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/dolphin/browser/c/a;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/c/o;->a:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/c/o;->b:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lcom/dolphin/browser/c/o;->c:Landroid/content/Context;

    .line 31
    iput p2, p0, Lcom/dolphin/browser/c/o;->a:I

    .line 32
    return-void
.end method

.method private a(I)V
    .locals 6

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/c/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 44
    const-string v3, ""

    .line 46
    invoke-static {}, Lcom/dolphin/browser/feedback/g;->a()Lcom/dolphin/browser/feedback/g;

    move-result-object v0

    .line 47
    packed-switch p1, :pswitch_data_0

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/c/o;->c:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/dolphin/browser/feedback/g;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/dolphin/browser/c/o;->c:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/feedback/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/dolphin/browser/c/o;->b:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/feedback/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 80
    :goto_1
    return-void

    .line 49
    :pswitch_0
    iget-object v1, p0, Lcom/dolphin/browser/c/o;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/feedback/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 52
    :pswitch_1
    invoke-virtual {v0}, Lcom/dolphin/browser/feedback/g;->b()Ljava/io/File;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/dolphin/browser/c/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/c/o;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e055c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 60
    :pswitch_2
    invoke-virtual {v0}, Lcom/dolphin/browser/feedback/g;->c()Ljava/io/File;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 62
    const-string v3, "/data/anr/traces.txt"

    invoke-virtual {v0, v3, v2}, Lcom/dolphin/browser/feedback/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/dolphin/browser/c/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/c/o;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e055a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 70
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dolphin/browser/c/o;->c:Landroid/content/Context;

    const-class v2, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    iget-object v1, p0, Lcom/dolphin/browser/c/o;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/c/o;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget-object v1, Lcom/dolphin/browser/n/a;->a:Lmobi/mgeek/TunnyBrowser/R$anim;

    const v1, 0x7f040008

    sget-object v2, Lcom/dolphin/browser/n/a;->a:Lmobi/mgeek/TunnyBrowser/R$anim;

    const v2, 0x7f040007

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/dolphin/browser/c/o;->a:I

    invoke-direct {p0, v0}, Lcom/dolphin/browser/c/o;->a(I)V

    .line 38
    const/4 v0, 0x0

    return v0
.end method
