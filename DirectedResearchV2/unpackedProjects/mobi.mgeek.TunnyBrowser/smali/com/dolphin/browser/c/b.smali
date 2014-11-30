.class public Lcom/dolphin/browser/c/b;
.super Lcom/dolphin/browser/c/a;
.source "BookmarkCommand.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/dolphin/browser/c/a;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/dolphin/browser/c/b;->a:Landroid/content/Context;

    .line 25
    iput p2, p0, Lcom/dolphin/browser/c/b;->b:I

    .line 26
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/c/b;->a:Landroid/content/Context;

    .line 68
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 69
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 71
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dolphin/browser/c/b;->a:Landroid/content/Context;

    const-class v2, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    const-string v1, "com.dolphin.browser.action.EDIT_BOOKMARK"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    invoke-direct {p0, v0}, Lcom/dolphin/browser/c/b;->a(Landroid/content/Intent;)V

    .line 58
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dolphin/browser/c/b;->a:Landroid/content/Context;

    const-class v2, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    invoke-direct {p0, v0}, Lcom/dolphin/browser/c/b;->a(Landroid/content/Intent;)V

    .line 64
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34
    iget v0, p0, Lcom/dolphin/browser/c/b;->b:I

    packed-switch v0, :pswitch_data_0

    .line 51
    :goto_0
    return v1

    .line 36
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/c/b;->a(Z)V

    goto :goto_0

    .line 40
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/dolphin/browser/c/b;->a(Z)V

    goto :goto_0

    .line 44
    :pswitch_2
    invoke-direct {p0}, Lcom/dolphin/browser/c/b;->b()V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
