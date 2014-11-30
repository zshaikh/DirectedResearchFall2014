.class public Lcom/freshplanet/flurry/functions/analytics/SetUserInfoFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SetUserInfoFunction"

    sput-object v0, Lcom/freshplanet/flurry/functions/analytics/SetUserInfoFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    sget-object v1, Lcom/freshplanet/flurry/functions/analytics/SetUserInfoFunction;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "age: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->setAge(I)V

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_1
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/freshplanet/flurry/functions/analytics/SetUserInfoFunction;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gender: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    sget-object v1, Lcom/freshplanet/flurry/functions/analytics/SetUserInfoFunction;->TAG:Ljava/lang/String;

    const-string v2, "gender Male"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    move-result-object v0

    move v1, v6

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->setGender(B)V

    :goto_3
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move v0, v5

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    move v0, v5

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    move v0, v5

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    move v0, v5

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v5

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/freshplanet/flurry/functions/analytics/SetUserInfoFunction;->TAG:Ljava/lang/String;

    const-string v1, "age is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :try_start_2
    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/freshplanet/flurry/functions/analytics/SetUserInfoFunction;->TAG:Ljava/lang/String;

    const-string v2, "gender Female"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    move-result-object v0

    move v1, v5

    goto :goto_2

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move v1, v5

    goto :goto_2

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    move v1, v5

    goto :goto_2

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    move v1, v5

    goto :goto_2

    :catch_8
    move-exception v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    move v1, v5

    goto :goto_2

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v1, v5

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/freshplanet/flurry/functions/analytics/SetUserInfoFunction;->TAG:Ljava/lang/String;

    const-string v1, "gender is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
