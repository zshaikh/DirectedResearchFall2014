.class Lcom/dolphin/browser/theme/c/b;
.super Ljava/lang/Object;
.source "DefaultResources.java"

# interfaces
.implements Lcom/e/a/a;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/c/a;

.field private b:Lcom/dolphin/browser/theme/c/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/c/a;Lcom/dolphin/browser/theme/c/f;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/dolphin/browser/theme/c/b;->a:Lcom/dolphin/browser/theme/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p2, p0, Lcom/dolphin/browser/theme/c/b;->b:Lcom/dolphin/browser/theme/c/f;

    .line 173
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/b;->b:Lcom/dolphin/browser/theme/c/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/theme/c/b;->b:Lcom/dolphin/browser/theme/c/f;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/c/f;->a()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/b;->b:Lcom/dolphin/browser/theme/c/f;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/c/f;->b()I

    move-result p1

    .line 180
    :cond_0
    return p1
.end method
