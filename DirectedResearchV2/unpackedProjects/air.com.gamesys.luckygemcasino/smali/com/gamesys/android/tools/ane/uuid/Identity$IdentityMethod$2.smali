.class Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod$2;
.super Ljava/lang/Object;
.source "Identity.java"

# interfaces
.implements Lcom/gamesys/android/tools/ane/uuid/Identity$IGeneratedStringValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public generate(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "androidId":Ljava/lang/String;
    const-string v1, "9774d56d682e549c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GC_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;->SELF_GENERATED_UUID:Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;

    iget-object v2, v2, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;->function:Lcom/gamesys/android/tools/ane/uuid/Identity$IGeneratedStringValue;

    invoke-interface {v2, p1}, Lcom/gamesys/android/tools/ane/uuid/Identity$IGeneratedStringValue;->generate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NULL_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;->SELF_GENERATED_UUID:Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;

    iget-object v2, v2, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;->function:Lcom/gamesys/android/tools/ane/uuid/Identity$IGeneratedStringValue;

    invoke-interface {v2, p1}, Lcom/gamesys/android/tools/ane/uuid/Identity$IGeneratedStringValue;->generate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_1
    return-object v0

    .line 187
    :cond_2
    if-nez v0, :cond_0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NULL_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;->SELF_GENERATED_UUID:Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;

    iget-object v2, v2, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;->function:Lcom/gamesys/android/tools/ane/uuid/Identity$IGeneratedStringValue;

    invoke-interface {v2, p1}, Lcom/gamesys/android/tools/ane/uuid/Identity$IGeneratedStringValue;->generate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
