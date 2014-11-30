.class Lcom/gamesys/android/billing/common/AneActivity$2;
.super Ljava/lang/Object;
.source "AneActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/billing/common/AneActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamesys/android/billing/common/AneActivity;


# direct methods
.method constructor <init>(Lcom/gamesys/android/billing/common/AneActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/billing/common/AneActivity$2;->this$0:Lcom/gamesys/android/billing/common/AneActivity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/gamesys/android/billing/common/AneActivity$2;->this$0:Lcom/gamesys/android/billing/common/AneActivity;

    invoke-virtual {v0}, Lcom/gamesys/android/billing/common/AneActivity;->finish()V

    .line 76
    return-void
.end method
