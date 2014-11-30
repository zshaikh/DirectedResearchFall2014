.class Lcom/appoxee/example/APIUI$3;
.super Ljava/lang/Object;
.source "APIUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appoxee/example/APIUI;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appoxee/example/APIUI;


# direct methods
.method constructor <init>(Lcom/appoxee/example/APIUI;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appoxee/example/APIUI$3;->this$0:Lcom/appoxee/example/APIUI;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    new-instance v0, Lcom/appoxee/example/APIUI$3$1;

    invoke-direct {v0, p0}, Lcom/appoxee/example/APIUI$3$1;-><init>(Lcom/appoxee/example/APIUI$3;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 149
    invoke-virtual {v0, v1}, Lcom/appoxee/example/APIUI$3$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 150
    return-void
.end method
