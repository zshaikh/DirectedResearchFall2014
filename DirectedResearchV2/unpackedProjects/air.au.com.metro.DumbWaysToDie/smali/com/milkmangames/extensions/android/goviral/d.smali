.class final Lcom/milkmangames/extensions/android/goviral/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# instance fields
.field final synthetic a:Lcom/milkmangames/extensions/android/goviral/b;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/goviral/b;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/d;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 5

    const-string v4, "apprequests"

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/d;->a:Lcom/milkmangames/extensions/android/goviral/b;

    const-string v1, "apprequests"

    invoke-virtual {v0, v4, p1}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/d;->a:Lcom/milkmangames/extensions/android/goviral/b;

    const-string v1, "apprequests"

    invoke-virtual {v0, v4}, Lcom/milkmangames/extensions/android/goviral/b;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/d;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "apprequests"

    invoke-virtual {v0, v1, v2, v4}, Lcom/milkmangames/extensions/android/goviral/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
