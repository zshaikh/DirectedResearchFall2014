.class final Lcom/milkmangames/extensions/android/iab/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field final synthetic a:Lcom/milkmangames/extensions/android/iab/a;


# direct methods
.method private constructor <init>(Lcom/milkmangames/extensions/android/iab/a;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/iab/e;->a:Lcom/milkmangames/extensions/android/iab/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/milkmangames/extensions/android/iab/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/milkmangames/extensions/android/iab/e;-><init>(Lcom/milkmangames/extensions/android/iab/a;)V

    return-void
.end method


# virtual methods
.method public final call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v2

    iget-object v3, p0, Lcom/milkmangames/extensions/android/iab/e;->a:Lcom/milkmangames/extensions/android/iab/a;

    invoke-virtual {v3, v0, v1, v2}, Lcom/milkmangames/extensions/android/iab/a;->a(ZLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "[IABExtension]"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
