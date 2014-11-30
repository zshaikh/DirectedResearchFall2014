.class Lcom/dolphin/browser/launcher/o;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/f;)V
    .locals 0

    .prologue
    .line 880
    iput-object p1, p0, Lcom/dolphin/browser/launcher/o;->a:Lcom/dolphin/browser/launcher/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/dolphin/browser/launcher/o;->a:Lcom/dolphin/browser/launcher/f;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/f;->b(Lcom/dolphin/browser/launcher/f;)V

    .line 883
    return-void
.end method
