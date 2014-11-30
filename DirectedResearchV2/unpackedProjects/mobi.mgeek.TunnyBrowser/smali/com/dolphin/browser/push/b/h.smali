.class Lcom/dolphin/browser/push/b/h;
.super Ljava/lang/Object;
.source "AddSpeedDialMessageExcutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/be;

.field final synthetic b:Lcom/dolphin/browser/launcher/cl;

.field final synthetic c:I

.field final synthetic d:Lcom/dolphin/browser/push/b/g;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/push/b/g;Lcom/dolphin/browser/launcher/be;Lcom/dolphin/browser/launcher/cl;I)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/dolphin/browser/push/b/h;->d:Lcom/dolphin/browser/push/b/g;

    iput-object p2, p0, Lcom/dolphin/browser/push/b/h;->a:Lcom/dolphin/browser/launcher/be;

    iput-object p3, p0, Lcom/dolphin/browser/push/b/h;->b:Lcom/dolphin/browser/launcher/cl;

    iput p4, p0, Lcom/dolphin/browser/push/b/h;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/push/b/h;->a:Lcom/dolphin/browser/launcher/be;

    iget-object v1, p0, Lcom/dolphin/browser/push/b/h;->b:Lcom/dolphin/browser/launcher/cl;

    iget v2, p0, Lcom/dolphin/browser/push/b/h;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/launcher/be;->a(Lcom/dolphin/browser/launcher/cl;I)V

    .line 94
    return-void
.end method
