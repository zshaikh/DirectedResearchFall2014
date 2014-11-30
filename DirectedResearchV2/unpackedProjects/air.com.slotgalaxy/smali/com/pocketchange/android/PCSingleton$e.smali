.class Lcom/pocketchange/android/PCSingleton$e;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/PCSingleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# static fields
.field public static final a:Landroid/content/IntentFilter;


# instance fields
.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1850
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.pocketchange.android.rewards.UPDATE_PRODUCT_TRANSACTIONS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/pocketchange/android/PCSingleton$e;->a:Landroid/content/IntentFilter;

    .line 1852
    sget-object v0, Lcom/pocketchange/android/PCSingleton$e;->a:Landroid/content/IntentFilter;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1853
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .prologue
    .line 1856
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1857
    iput-boolean p1, p0, Lcom/pocketchange/android/PCSingleton$e;->b:Z

    .line 1858
    return-void
.end method

.method synthetic constructor <init>(ZLcom/pocketchange/android/PCSingleton$1;)V
    .locals 0

    .prologue
    .line 1848
    invoke-direct {p0, p1}, Lcom/pocketchange/android/PCSingleton$e;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v6, "]"

    const-string v5, "UpdateProductTransactionsReceiver"

    .line 1862
    invoke-static {}, Lcom/pocketchange/android/PCSingleton;->getInstance()Lcom/pocketchange/android/PCSingleton;

    move-result-object v0

    .line 1863
    if-nez v0, :cond_1

    .line 1864
    const-string v0, "UpdateProductTransactionsReceiver"

    const-string v0, "onReceive invoked without an available singleton instance"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    :cond_0
    :goto_0
    return-void

    .line 1867
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1868
    iget-boolean v2, p0, Lcom/pocketchange/android/PCSingleton$e;->b:Z

    if-eqz v2, :cond_2

    .line 1869
    const-string v2, "UpdateProductTransactionsReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent with action ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    :cond_2
    if-eqz v1, :cond_0

    const-string v2, "com.pocketchange.android.rewards.UPDATE_PRODUCT_TRANSACTIONS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1874
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1875
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "package"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1877
    :cond_3
    const-string v0, "UpdateProductTransactionsReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] for action ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1880
    :cond_4
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 1881
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1884
    new-instance v1, Lcom/pocketchange/android/PCSingleton$e$1;

    const-string v2, "UpdateProductTransactionsReceiver"

    invoke-direct {v1, p0, v5, v0}, Lcom/pocketchange/android/PCSingleton$e$1;-><init>(Lcom/pocketchange/android/PCSingleton$e;Ljava/lang/String;Lcom/pocketchange/android/PCSingleton;)V

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/PCSingleton;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
