.class Lcom/dolphin/browser/share/i;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Lcom/dolphin/browser/share/s;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/ShareActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/ShareActivity;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/dolphin/browser/share/i;->a:Lcom/dolphin/browser/share/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/dolphin/browser/share/i;->a:Lcom/dolphin/browser/share/ShareActivity;

    invoke-static {v0}, Lcom/dolphin/browser/share/ShareActivity;->a(Lcom/dolphin/browser/share/ShareActivity;)V

    .line 195
    return-void
.end method

.method public a(Lcom/dolphin/browser/share/b/k;)V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dolphin/browser/share/i;->a:Lcom/dolphin/browser/share/ShareActivity;

    new-instance v1, Lcom/dolphin/browser/share/j;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/share/j;-><init>(Lcom/dolphin/browser/share/i;Lcom/dolphin/browser/share/b/k;)V

    invoke-static {v0, v1}, Lcom/dolphin/browser/share/ShareActivity;->a(Lcom/dolphin/browser/share/ShareActivity;Lcom/dolphin/browser/share/a;)V

    .line 190
    return-void
.end method
