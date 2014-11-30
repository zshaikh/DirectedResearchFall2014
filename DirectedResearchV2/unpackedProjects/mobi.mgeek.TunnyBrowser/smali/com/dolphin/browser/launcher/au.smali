.class Lcom/dolphin/browser/launcher/au;
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
    .line 869
    iput-object p1, p0, Lcom/dolphin/browser/launcher/au;->a:Lcom/dolphin/browser/launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/dolphin/browser/launcher/au;->a:Lcom/dolphin/browser/launcher/Folder;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/Folder;->a(Lcom/dolphin/browser/launcher/Folder;)V

    .line 872
    return-void
.end method
