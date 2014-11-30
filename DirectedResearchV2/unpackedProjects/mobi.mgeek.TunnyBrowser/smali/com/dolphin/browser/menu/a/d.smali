.class public Lcom/dolphin/browser/menu/a/d;
.super Ljava/lang/Object;
.source "ShareImage.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/dolphin/browser/menu/a/d;->a:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/dolphin/browser/menu/a/d;->b:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dolphin/browser/menu/a/d;->a:Landroid/content/Context;

    const-class v2, Lcom/dolphin/browser/share/ShareActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    const-string v1, "shared_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string v1, "shared_type"

    const-string v2, "image"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    iget-object v1, p0, Lcom/dolphin/browser/menu/a/d;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dolphin/browser/menu/a/d;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/menu/a/d;->a(Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x1

    return v0
.end method
