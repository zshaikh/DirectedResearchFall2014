.class Lcom/dolphin/browser/share/tabpush/c;
.super Ljava/lang/Object;
.source "TabPushShareContentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/dolphin/browser/share/tabpush/c;->a:Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/c;->a:Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->finish()V

    .line 462
    return-void
.end method
