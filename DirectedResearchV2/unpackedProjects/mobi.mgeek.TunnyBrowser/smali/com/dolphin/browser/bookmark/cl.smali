.class final Lcom/dolphin/browser/bookmark/cl;
.super Ljava/lang/Object;
.source "ImportBookmarksActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/cl;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 240
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/cl;->a:Landroid/content/Context;

    const-class v2, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/cl;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 243
    return-void
.end method
