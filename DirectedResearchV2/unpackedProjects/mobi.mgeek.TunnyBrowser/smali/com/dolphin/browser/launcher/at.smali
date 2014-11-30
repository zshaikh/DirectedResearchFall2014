.class Lcom/dolphin/browser/launcher/at;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/Folder;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/Folder;)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Lcom/dolphin/browser/launcher/at;->a:Lcom/dolphin/browser/launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 776
    iget-object v0, p0, Lcom/dolphin/browser/launcher/at;->a:Lcom/dolphin/browser/launcher/Folder;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 777
    iget-object v0, p0, Lcom/dolphin/browser/launcher/at;->a:Lcom/dolphin/browser/launcher/Folder;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 778
    return-void
.end method
