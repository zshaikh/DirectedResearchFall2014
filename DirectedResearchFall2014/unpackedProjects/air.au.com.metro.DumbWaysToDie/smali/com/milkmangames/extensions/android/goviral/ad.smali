.class final Lcom/milkmangames/extensions/android/goviral/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field final synthetic a:Lcom/milkmangames/extensions/android/goviral/b;


# direct methods
.method private constructor <init>(Lcom/milkmangames/extensions/android/goviral/b;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/ad;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/milkmangames/extensions/android/goviral/b;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/milkmangames/extensions/android/goviral/ad;-><init>(Lcom/milkmangames/extensions/android/goviral/b;)V

    return-void
.end method


# virtual methods
.method public final call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    check-cast v0, Lcom/adobe/fre/FREArray;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    check-cast v1, Lcom/adobe/fre/FREArray;

    invoke-static {v0, v1}, Lcom/milkmangames/extensions/android/goviral/b;->a(Lcom/adobe/fre/FREArray;Lcom/adobe/fre/FREArray;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/ad;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v1, v0}, Lcom/milkmangames/extensions/android/goviral/b;->b(Lcom/milkmangames/extensions/android/goviral/b;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "[GVExtension]"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
