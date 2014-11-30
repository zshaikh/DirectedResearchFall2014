.class Lcom/mgeek/android/util/w;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mgeek/android/util/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/mgeek/android/util/UpdateActivity;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mgeek/android/util/w;->a:Lcom/mgeek/android/util/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mgeek/android/util/w;->a:Lcom/mgeek/android/util/UpdateActivity;

    invoke-static {v0}, Lcom/mgeek/android/util/UpdateActivity;->a(Lcom/mgeek/android/util/UpdateActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/mgeek/android/util/w;->a:Lcom/mgeek/android/util/UpdateActivity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/mgeek/android/util/UpdateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 92
    iget-object v1, p0, Lcom/mgeek/android/util/w;->a:Lcom/mgeek/android/util/UpdateActivity;

    invoke-virtual {v1}, Lcom/mgeek/android/util/UpdateActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/util/w;->a:Lcom/mgeek/android/util/UpdateActivity;

    invoke-virtual {v0}, Lcom/mgeek/android/util/UpdateActivity;->finish()V

    goto :goto_0
.end method
