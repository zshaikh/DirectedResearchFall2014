.class Lcom/dolphin/browser/l/f;
.super Ljava/lang/Object;
.source "MasterPasswordManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/l/l;

.field final synthetic b:Lcom/dolphin/browser/l/e;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/l/e;Lcom/dolphin/browser/l/l;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/dolphin/browser/l/f;->b:Lcom/dolphin/browser/l/e;

    iput-object p2, p0, Lcom/dolphin/browser/l/f;->a:Lcom/dolphin/browser/l/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/l/f;->a:Lcom/dolphin/browser/l/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/l/l;->h()V

    .line 123
    return-void
.end method
