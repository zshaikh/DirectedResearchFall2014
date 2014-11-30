.class Lcom/dolphin/browser/sidebar/l;
.super Ljava/lang/Object;
.source "BookmarkView.java"

# interfaces
.implements Lcom/dolphin/browser/bookmark/bk;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/sidebar/i;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sidebar/i;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/l;->b:Lcom/dolphin/browser/sidebar/i;

    iput-object p2, p0, Lcom/dolphin/browser/sidebar/l;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/l;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/dolphin/browser/sidebar/l;->b:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v1}, Lcom/dolphin/browser/sidebar/i;->a(Lcom/dolphin/browser/sidebar/i;)Lcom/dolphin/browser/bookmark/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/at;->a(Landroid/content/Context;Lcom/dolphin/browser/bookmark/j;)V

    .line 148
    return-void
.end method
