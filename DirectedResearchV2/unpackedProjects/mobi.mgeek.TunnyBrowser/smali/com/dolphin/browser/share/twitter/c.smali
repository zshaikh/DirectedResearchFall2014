.class Lcom/dolphin/browser/share/twitter/c;
.super Ljava/lang/Object;
.source "TwitterShareViewContent.java"

# interfaces
.implements Lcom/dolphin/browser/q/d/ap;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/dolphin/browser/q/d/aa;

.field final synthetic d:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/q/d/aa;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/dolphin/browser/share/twitter/c;->d:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    iput-object p2, p0, Lcom/dolphin/browser/share/twitter/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/share/twitter/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dolphin/browser/share/twitter/c;->c:Lcom/dolphin/browser/q/d/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/c;->d:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/share/twitter/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dolphin/browser/share/twitter/c;->c:Lcom/dolphin/browser/q/d/aa;

    invoke-virtual {v3}, Lcom/dolphin/browser/q/d/aa;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method
