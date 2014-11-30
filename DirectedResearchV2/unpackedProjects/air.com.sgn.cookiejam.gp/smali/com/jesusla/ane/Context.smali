.class public abstract Lcom/jesusla/ane/Context;
.super Lcom/adobe/fre/FREContext;
.source "Context.java"


# instance fields
.field private actionScriptInitialized:Z

.field private activity:Landroid/app/Activity;

.field private final functions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation
.end field

.field private methods:[Ljava/lang/reflect/Method;

.field private final name:Ljava/lang/String;

.field private final pendingRunnables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private properties:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 32
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/jesusla/ane/Context;->functions:Ljava/util/Map;

    .line 33
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/jesusla/ane/Context;->pendingRunnables:Ljava/util/Map;

    .line 35
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jesusla/ane/Context;->actionScriptInitialized:Z

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "n":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 40
    .local v1, "pos":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jesusla/ane/Context;->name:Ljava/lang/String;

    .line 41
    const-string v2, "claimTicket"

    invoke-virtual {p0, v2}, Lcom/jesusla/ane/Context;->registerFunction(Ljava/lang/String;)V

    .line 42
    const-string v2, "setActionScriptThis"

    invoke-virtual {p0, v2}, Lcom/jesusla/ane/Context;->registerFunction(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method private boxNumber(Ljava/lang/Number;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "number"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Number;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "typeHint":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 86
    :cond_0
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_1
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_2
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_3
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 94
    goto :goto_0
.end method

.method private describeError(Lcom/adobe/fre/FREObject;)Ljava/lang/String;
    .locals 13
    .param p1, "error"    # Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 189
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jesusla/ane/Context;->getFlashType(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, "type":Ljava/lang/String;
    const-string v7, "errorID"

    invoke-virtual {p1, v7}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    .line 191
    .local v1, "errorId":I
    const-string v7, "name"

    invoke-virtual {p1, v7}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "name":Ljava/lang/String;
    const-string v7, "message"

    invoke-virtual {p1, v7}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "message":Ljava/lang/String;
    const-string v7, "getStackTrace"

    const/4 v8, 0x0

    new-array v8, v8, [Lcom/adobe/fre/FREObject;

    invoke-virtual {p1, v7, v8}, Lcom/adobe/fre/FREObject;->callMethod(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v5

    .line 194
    .local v5, "trace":Lcom/adobe/fre/FREObject;
    if-nez v5, :cond_0

    const-string v7, "Trace missing"

    move-object v4, v7

    .line 195
    .local v4, "stackTrace":Ljava/lang/String;
    :goto_0
    const-string v7, "%s(%d,%s,%s):\n%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v3, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    const/4 v9, 0x4

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 198
    .end local v1    # "errorId":I
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "stackTrace":Ljava/lang/String;
    .end local v5    # "trace":Lcom/adobe/fre/FREObject;
    .end local v6    # "type":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 194
    .restart local v1    # "errorId":I
    .restart local v2    # "message":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v5    # "trace":Lcom/adobe/fre/FREObject;
    .restart local v6    # "type":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v4, v7

    goto :goto_0

    .line 196
    .end local v1    # "errorId":I
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "trace":Lcom/adobe/fre/FREObject;
    .end local v6    # "type":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "describeError(%s)"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object p1, v8, v11

    invoke-static {v0, v7, v8}, Lcom/jesusla/ane/Extension;->warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    const-string v7, "UNKNOWN AS3 ERROR"

    goto :goto_1
.end method

.method private findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v4, p0, Lcom/jesusla/ane/Context;->methods:[Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/jesusla/ane/Context;->methods:[Ljava/lang/reflect/Method;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/jesusla/ane/Context;->methods:[Ljava/lang/reflect/Method;

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 72
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    .line 75
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local p0    # "this":Lcom/jesusla/ane/Context;
    :goto_1
    return-object v4

    .line 71
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    .restart local p0    # "this":Lcom/jesusla/ane/Context;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_2
    const-string v4, "Method not found: %s.%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/jesusla/ane/Context;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/jesusla/ane/Context;
    check-cast p0, Ljava/lang/reflect/Method;

    move-object v4, p0

    goto :goto_1
.end method

.method private readProperties()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/jesusla/ane/Context;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 444
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/jesusla/ane/Context;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, "packageName":Ljava/lang/String;
    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 447
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local p0    # "this":Lcom/jesusla/ane/Context;
    :goto_0
    return-object v4

    .line 448
    .restart local p0    # "this":Lcom/jesusla/ane/Context;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 449
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Error reading properties"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/jesusla/ane/Context;
    check-cast p0, Landroid/os/Bundle;

    move-object v4, p0

    goto :goto_0
.end method


# virtual methods
.method public varargs asyncFlashCall(Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p2, "target"    # Lcom/adobe/fre/FREObject;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "javaArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/adobe/fre/FREObject;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/jesusla/ane/Context$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jesusla/ane/Context$1;-><init>(Lcom/jesusla/ane/Context;Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/jesusla/ane/Context;->executeOnActionScriptThread(Ljava/lang/Runnable;)V

    .line 222
    return-void
.end method

.method public claimTicket(Ljava/lang/String;)V
    .locals 4
    .param p1, "ticket"    # Ljava/lang/String;

    .prologue
    .line 380
    iget-object v1, p0, Lcom/jesusla/ane/Context;->pendingRunnables:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 381
    .local v0, "runnable":Ljava/lang/Runnable;
    if-nez v0, :cond_0

    .line 382
    const-string v1, "Attempt to claim non-existent ticket \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/jesusla/ane/Extension;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public executeOnActionScriptThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 373
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "ticket":Ljava/lang/String;
    iget-object v1, p0, Lcom/jesusla/ane/Context;->pendingRunnables:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-boolean v1, p0, Lcom/jesusla/ane/Context;->actionScriptInitialized:Z

    if-eqz v1, :cond_0

    .line 376
    const-string v1, "TICKET"

    invoke-virtual {p0, v0, v1}, Lcom/jesusla/ane/Context;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_0
    return-void
.end method

.method public varargs flashCall(Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p2, "target"    # Lcom/adobe/fre/FREObject;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "javaArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/adobe/fre/FREObject;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p2, :cond_0

    .line 205
    :try_start_0
    invoke-virtual {p0}, Lcom/jesusla/ane/Context;->getActionScriptData()Lcom/adobe/fre/FREObject;

    move-result-object p2

    .line 206
    :cond_0
    invoke-virtual {p0, p4}, Lcom/jesusla/ane/Context;->toFlash([Ljava/lang/Object;)[Lcom/adobe/fre/FREObject;

    move-result-object v1

    .line 207
    .local v1, "flashArgs":[Lcom/adobe/fre/FREObject;
    invoke-virtual {p2, p3, v1}, Lcom/adobe/fre/FREObject;->callMethod(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    .line 208
    .local v2, "flashResult":Lcom/adobe/fre/FREObject;
    invoke-virtual {p0, v2, p1}, Lcom/jesusla/ane/Context;->fromFlash(Lcom/adobe/fre/FREObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 209
    .local v3, "javaResult":Ljava/lang/Object;, "TT;"
    const-string v4, "J->F %s.%s(%s): %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0, p2}, Lcom/jesusla/ane/Context;->getFlashType(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    const/4 v6, 0x2

    const-string v7, ", "

    invoke-static {v7, p4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/adobe/fre/FREASErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v3

    .line 214
    .end local v1    # "flashArgs":[Lcom/adobe/fre/FREObject;
    .end local v2    # "flashResult":Lcom/adobe/fre/FREObject;
    .end local v3    # "javaResult":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v4

    .line 211
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 212
    .local v0, "e":Lcom/adobe/fre/FREASErrorException;
    const-string v4, "While calling flash %s.%s(%s): %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0, p2}, Lcom/jesusla/ane/Context;->getFlashType(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    const/4 v6, 0x2

    const-string v7, ", "

    invoke-static {v7, p4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v0}, Lcom/adobe/fre/FREASErrorException;->getThrownException()Lcom/adobe/fre/FREObject;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/jesusla/ane/Context;->describeError(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 213
    .end local v0    # "e":Lcom/adobe/fre/FREASErrorException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "While calling flash %s.%s(%s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0, p2}, Lcom/jesusla/ane/Context;->getFlashType(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    const/4 v6, 0x2

    const-string v7, ", "

    invoke-static {v7, p4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method public varargs flashNew(Ljava/lang/String;[Ljava/lang/Object;)Lcom/adobe/fre/FREObject;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 352
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/jesusla/ane/Context;->toFlash([Ljava/lang/Object;)[Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREASErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 356
    .end local p0    # "this":Lcom/jesusla/ane/Context;
    :goto_0
    return-object v1

    .line 353
    .restart local p0    # "this":Lcom/jesusla/ane/Context;
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 354
    .local v0, "e":Lcom/adobe/fre/FREASErrorException;
    const-string v1, "newObject %s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0}, Lcom/adobe/fre/FREASErrorException;->getThrownException()Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jesusla/ane/Context;->describeError(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/jesusla/ane/Context;
    check-cast p0, Lcom/adobe/fre/FREObject;

    move-object v1, p0

    goto :goto_0

    .line 355
    .end local v0    # "e":Lcom/adobe/fre/FREASErrorException;
    .restart local p0    # "this":Lcom/jesusla/ane/Context;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 356
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "newObject %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/jesusla/ane/Context;
    check-cast p0, Lcom/adobe/fre/FREObject;

    move-object v1, p0

    goto :goto_0
.end method

.method public flashProperty(Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p2, "object"    # Lcom/adobe/fre/FREObject;
    .param p3, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/adobe/fre/FREObject;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p1, "typeHint":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 341
    :try_start_0
    invoke-virtual {p2, p3}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    .line 342
    .local v1, "value":Lcom/adobe/fre/FREObject;
    invoke-virtual {p0, v1, p1}, Lcom/jesusla/ane/Context;->fromFlash(Lcom/adobe/fre/FREObject;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/adobe/fre/FREASErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 346
    .end local v1    # "value":Lcom/adobe/fre/FREObject;
    :goto_0
    return-object v2

    .line 343
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 344
    .local v0, "e":Lcom/adobe/fre/FREASErrorException;
    const-string v2, "property %s.%s: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    aput-object p3, v3, v5

    invoke-virtual {v0}, Lcom/adobe/fre/FREASErrorException;->getThrownException()Lcom/adobe/fre/FREObject;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/jesusla/ane/Context;->describeError(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 345
    .end local v0    # "e":Lcom/adobe/fre/FREASErrorException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "property %s.%s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v4

    aput-object p3, v3, v5

    invoke-static {v0, v2, v3}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method protected fromFlash(Lcom/adobe/fre/FREObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "flashObject"    # Lcom/adobe/fre/FREObject;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/ane/Context;->fromFlash(Lcom/adobe/fre/FREObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected fromFlash(Lcom/adobe/fre/FREObject;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 26
    .param p1, "flashObject"    # Lcom/adobe/fre/FREObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/adobe/fre/FREObject;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, "typeHint":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 101
    const/16 v21, 0x0

    .line 183
    :goto_0
    return-object v21

    .line 102
    :cond_0
    :try_start_0
    const-class v21, Lcom/adobe/fre/FREObject;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    move-object/from16 v21, p1

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/adobe/fre/FREArray;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 105
    move-object/from16 v0, p1

    check-cast v0, Lcom/adobe/fre/FREArray;

    move-object v9, v0

    .line 106
    .local v9, "flashArray":Lcom/adobe/fre/FREArray;
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->isArray()Z

    move-result v21

    if-nez v21, :cond_2

    .line 107
    const-string v21, "Expected array argument, received %s instead"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p2, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    goto :goto_0

    .line 108
    :cond_2
    if-nez p2, :cond_3

    const-class v21, Ljava/lang/Object;

    move-object/from16 v7, v21

    .line 109
    .local v7, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    invoke-virtual {v9}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move v13, v0

    .line 110
    .local v13, "len":I
    invoke-static {v7, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 111
    .local v17, "rv":[Ljava/lang/Object;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v13, :cond_4

    .line 112
    move v0, v10

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object v0, v9

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/jesusla/ane/Context;->fromFlash(Lcom/adobe/fre/FREObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    aput-object v21, v17, v10

    .line 111
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 108
    .end local v7    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "i":I
    .end local v13    # "len":I
    .end local v17    # "rv":[Ljava/lang/Object;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v21

    move-object/from16 v7, v21

    goto :goto_1

    .restart local v7    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "i":I
    .restart local v13    # "len":I
    .restart local v17    # "rv":[Ljava/lang/Object;
    :cond_4
    move-object/from16 v21, v17

    .line 113
    goto :goto_0

    .line 115
    .end local v7    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "flashArray":Lcom/adobe/fre/FREArray;
    .end local v10    # "i":I
    .end local v13    # "len":I
    .end local v17    # "rv":[Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/adobe/fre/FREByteArray;

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 116
    move-object/from16 v0, p1

    check-cast v0, Lcom/adobe/fre/FREByteArray;

    move-object v9, v0

    .line 117
    .local v9, "flashArray":Lcom/adobe/fre/FREByteArray;
    invoke-virtual {v9}, Lcom/adobe/fre/FREByteArray;->acquire()V

    .line 118
    invoke-virtual {v9}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 119
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Lcom/adobe/fre/FREByteArray;->release()V

    .line 120
    const-class v21, Ljava/nio/ByteBuffer;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v21, v6

    .line 121
    goto/16 :goto_0

    .line 122
    :cond_6
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v21

    goto/16 :goto_0

    .line 124
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "flashArray":Lcom/adobe/fre/FREByteArray;
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/jesusla/ane/Context;->getFlashType(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v19

    .line 125
    .local v19, "type":Ljava/lang/String;
    const-string v21, "null"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 126
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 127
    :cond_8
    const-string v21, "int"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    const-string v21, "uint"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 128
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/jesusla/ane/Context;->boxNumber(Ljava/lang/Number;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    goto/16 :goto_0

    .line 129
    :cond_a
    const-string v21, "double"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/jesusla/ane/Context;->boxNumber(Ljava/lang/Number;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    goto/16 :goto_0

    .line 131
    :cond_b
    const-string v21, "Boolean"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    goto/16 :goto_0

    .line 133
    :cond_c
    const-string v21, "String"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 134
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    .line 135
    :cond_d
    const-string v21, "Number"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 136
    const-class v21, Ljava/lang/Long;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 137
    const-class v21, Ljava/lang/String;

    const-string v22, "toFixed"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jesusla/ane/Context;->flashCall(Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    goto/16 :goto_0

    .line 139
    :cond_e
    const-string v21, "Date"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 140
    new-instance v21, Ljava/util/Date;

    const-class v22, Ljava/lang/Long;

    const-string v23, "time"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/jesusla/ane/Context;->flashProperty(Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-direct/range {v21 .. v23}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Lcom/adobe/fre/FREASErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 180
    .end local v19    # "type":Ljava/lang/String;
    :catch_0
    move-exception v21

    move-object/from16 v8, v21

    .line 181
    .local v8, "e":Lcom/adobe/fre/FREASErrorException;
    const-string v21, "Converting %s to %s: %s"

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p1, v22, v23

    const/16 v23, 0x1

    aput-object p2, v22, v23

    const/16 v23, 0x2

    invoke-virtual {v8}, Lcom/adobe/fre/FREASErrorException;->getThrownException()Lcom/adobe/fre/FREObject;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/jesusla/ane/Context;->describeError(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object v0, v8

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    goto/16 :goto_0

    .line 141
    .end local v8    # "e":Lcom/adobe/fre/FREASErrorException;
    .restart local v19    # "type":Ljava/lang/String;
    :cond_f
    :try_start_1
    const-string v21, "Function"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_10

    const-string v21, "::MethodClosure"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    if-gez v21, :cond_10

    const-string v21, ".MethodClosure"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    if-ltz v21, :cond_11

    .line 142
    :cond_10
    new-instance v21, Lcom/jesusla/ane/Closure;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/jesusla/ane/Closure;-><init>(Lcom/jesusla/ane/Context;Lcom/adobe/fre/FREObject;)V
    :try_end_1
    .catch Lcom/adobe/fre/FREASErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 182
    .end local v19    # "type":Ljava/lang/String;
    :catch_1
    move-exception v21

    move-object/from16 v8, v21

    .line 183
    .local v8, "e":Ljava/lang/Exception;
    const-string v21, "Converting %s to %s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p1, v22, v23

    const/16 v23, 0x1

    aput-object p2, v22, v23

    move-object v0, v8

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    goto/16 :goto_0

    .line 143
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v19    # "type":Ljava/lang/String;
    :cond_11
    if-eqz p2, :cond_15

    :try_start_2
    const-class v21, Landroid/os/Bundle;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_15

    const/16 v21, 0x1

    move/from16 v12, v21

    .line 144
    .local v12, "isBundle":Z
    :goto_3
    if-eqz p2, :cond_12

    const-class v21, Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-nez v21, :cond_12

    if-eqz v12, :cond_23

    .line 145
    :cond_12
    const-string v21, "Object"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_13

    .line 146
    const-string v21, "Conversion: Fallback conversion: AS3 Object of type %s to %s (%s)"

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v19, v22, v23

    const/16 v23, 0x1

    aput-object p2, v22, v23

    const/16 v23, 0x2

    if-nez v19, :cond_16

    const/16 v24, 0x1

    :goto_4
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/jesusla/ane/Extension;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :cond_13
    const-class v21, [Ljava/lang/String;

    const/16 v22, 0x0

    const-string v23, "enumerateObjectProperties"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object p1, v24, v25

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jesusla/ane/Context;->flashCall(Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/String;

    .line 148
    .local v16, "props":[Ljava/lang/String;
    if-eqz v12, :cond_1f

    .line 149
    new-instance v17, Landroid/os/Bundle;

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 150
    .local v17, "rv":Landroid/os/Bundle;
    move-object/from16 v5, v16

    .local v5, "arr$":[Ljava/lang/String;
    array-length v14, v5

    .local v14, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_5
    if-ge v11, v14, :cond_1e

    aget-object v15, v5, v11

    .line 151
    .local v15, "prop":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v20

    .line 152
    .local v20, "val":Lcom/adobe/fre/FREObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jesusla/ane/Context;->getFlashType(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v19

    .line 153
    const-string v21, "int"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_14

    const-string v21, "uint"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 154
    :cond_14
    invoke-virtual/range {v20 .. v20}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v21

    move-object/from16 v0, v17

    move-object v1, v15

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 143
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "isBundle":Z
    .end local v14    # "len$":I
    .end local v15    # "prop":Ljava/lang/String;
    .end local v16    # "props":[Ljava/lang/String;
    .end local v17    # "rv":Landroid/os/Bundle;
    .end local v20    # "val":Lcom/adobe/fre/FREObject;
    :cond_15
    const/16 v21, 0x0

    move/from16 v12, v21

    goto/16 :goto_3

    .line 146
    .restart local v12    # "isBundle":Z
    :cond_16
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 155
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v11    # "i$":I
    .restart local v14    # "len$":I
    .restart local v15    # "prop":Ljava/lang/String;
    .restart local v16    # "props":[Ljava/lang/String;
    .restart local v17    # "rv":Landroid/os/Bundle;
    .restart local v20    # "val":Lcom/adobe/fre/FREObject;
    :cond_17
    const-string v21, "double"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_18

    const-string v21, "float"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_18

    const-string v21, "Number"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    .line 156
    :cond_18
    invoke-virtual/range {v20 .. v20}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v21

    move-object/from16 v0, v17

    move-object v1, v15

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_6

    .line 157
    :cond_19
    const-string v21, "Bool"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1a

    .line 158
    invoke-virtual/range {v20 .. v20}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v21

    move-object/from16 v0, v17

    move-object v1, v15

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_6

    .line 159
    :cond_1a
    const-string v21, "String"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 160
    invoke-virtual/range {v20 .. v20}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object v1, v15

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 161
    :cond_1b
    const-string v21, "Object"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1c

    .line 162
    const-class v21, Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/jesusla/ane/Context;->fromFlash(Lcom/adobe/fre/FREObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v0, v17

    move-object v1, v15

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_6

    .line 163
    :cond_1c
    const-string v21, "Array"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1d

    .line 164
    const-class v21, [Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/jesusla/ane/Context;->fromFlash(Lcom/adobe/fre/FREObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object/from16 v0, v17

    move-object v1, v15

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_6

    .line 166
    :cond_1d
    const-string v21, "Conversion: Unable to store %s type %s in for prop %s.%s"

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v20, v22, v23

    const/16 v23, 0x1

    aput-object v19, v22, v23

    const/16 v23, 0x2

    aput-object p1, v22, v23

    const/16 v23, 0x3

    aput-object v15, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .end local v15    # "prop":Ljava/lang/String;
    .end local v20    # "val":Lcom/adobe/fre/FREObject;
    :cond_1e
    move-object/from16 v21, v17

    .line 168
    goto/16 :goto_0

    .line 170
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    .end local v17    # "rv":Landroid/os/Bundle;
    :cond_1f
    if-eqz p2, :cond_20

    const-class v21, Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_21

    .line 171
    :cond_20
    const-class p2, Ljava/util/HashMap;

    .line 172
    :cond_21
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map;

    .line 173
    .local v18, "rv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v5, v16

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v14, v5

    .restart local v14    # "len$":I
    const/4 v11, 0x0

    .restart local v11    # "i$":I
    :goto_7
    if-ge v11, v14, :cond_22

    aget-object v15, v5, v11

    .line 174
    .restart local v15    # "prop":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v20

    .line 175
    .restart local v20    # "val":Lcom/adobe/fre/FREObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jesusla/ane/Context;->fromFlash(Lcom/adobe/fre/FREObject;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v18

    move-object v1, v15

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .end local v15    # "prop":Ljava/lang/String;
    .end local v20    # "val":Lcom/adobe/fre/FREObject;
    :cond_22
    move-object/from16 v21, v18

    .line 177
    goto/16 :goto_0

    .line 179
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "props":[Ljava/lang/String;
    .end local v18    # "rv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_23
    const-string v21, "Conversion: Unable to convert %s to %s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v19, v22, v23

    const/16 v23, 0x1

    aput-object p2, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/adobe/fre/FREASErrorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v21

    goto/16 :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/jesusla/ane/Context;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 415
    invoke-super {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/jesusla/ane/Context;->activity:Landroid/app/Activity;

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/jesusla/ane/Context;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getBooleanProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/jesusla/ane/Context;->properties:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getFlashType(Lcom/adobe/fre/FREObject;)Ljava/lang/String;
    .locals 8
    .param p1, "object"    # Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 328
    :try_start_0
    invoke-virtual {p0}, Lcom/jesusla/ane/Context;->getActionScriptData()Lcom/adobe/fre/FREObject;

    move-result-object v3

    .line 329
    .local v3, "th":Lcom/adobe/fre/FREObject;
    const/4 v4, 0x1

    new-array v0, v4, [Lcom/adobe/fre/FREObject;

    const/4 v4, 0x0

    aput-object p1, v0, v4

    .line 330
    .local v0, "args":[Lcom/adobe/fre/FREObject;
    const-string v4, "getQualifiedClassName"

    invoke-virtual {v3, v4, v0}, Lcom/adobe/fre/FREObject;->callMethod(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    .line 331
    .local v2, "rv":Lcom/adobe/fre/FREObject;
    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/fre/FREASErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 335
    .end local v0    # "args":[Lcom/adobe/fre/FREObject;
    .end local v2    # "rv":Lcom/adobe/fre/FREObject;
    .end local v3    # "th":Lcom/adobe/fre/FREObject;
    .end local p0    # "this":Lcom/jesusla/ane/Context;
    :goto_0
    return-object v4

    .line 332
    .restart local p0    # "this":Lcom/jesusla/ane/Context;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 333
    .local v1, "e":Lcom/adobe/fre/FREASErrorException;
    const-string v4, "getQualifiedClassName(%s): %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v1}, Lcom/adobe/fre/FREASErrorException;->getThrownException()Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jesusla/ane/Context;->describeError(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1, v4, v5}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/jesusla/ane/Context;
    check-cast p0, Ljava/lang/String;

    move-object v4, p0

    goto :goto_0

    .line 334
    .end local v1    # "e":Lcom/adobe/fre/FREASErrorException;
    .restart local p0    # "this":Lcom/jesusla/ane/Context;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 335
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "getQualifiedClassName(%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v1, v4, v5}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/jesusla/ane/Context;
    check-cast p0, Ljava/lang/String;

    move-object v4, p0

    goto :goto_0
.end method

.method public final getFunctions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jesusla/ane/Context;->functions:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jesusla/ane/Context;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getObject(I)Lcom/adobe/fre/FREObject;
    .locals 6
    .param p1, "closure"    # I

    .prologue
    .line 369
    const-class v0, Lcom/adobe/fre/FREObject;

    const/4 v1, 0x0

    const-string v2, "__getObject"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jesusla/ane/Context;->flashCall(Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/jesusla/ane/Context;
    check-cast p0, Lcom/adobe/fre/FREObject;

    return-object p0
.end method

.method public getProperties()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/jesusla/ane/Context;->properties:Landroid/os/Bundle;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 425
    iget-object v1, p0, Lcom/jesusla/ane/Context;->properties:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 426
    .local v0, "prop":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 427
    const/4 v1, 0x0

    .line 428
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRequiredProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Lcom/jesusla/ane/Context;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "rv":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 438
    const-string v1, "Missing property %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/jesusla/ane/Context;
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    .line 439
    :goto_0
    return-object v1

    .restart local p0    # "this":Lcom/jesusla/ane/Context;
    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method protected initContext()V
    .locals 0

    .prologue
    .line 406
    return-void
.end method

.method protected registerFunction(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-virtual {p0, p1, p1}, Lcom/jesusla/ane/Context;->registerFunction(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method protected registerFunction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "spec"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p2}, Lcom/jesusla/ane/Context;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 64
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 65
    .local v1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/jesusla/ane/Context;->functions:Ljava/util/Map;

    new-instance v3, Lcom/jesusla/ane/Function;

    invoke-direct {v3, v0, v1}, Lcom/jesusla/ane/Function;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/Class;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public releaseObject(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 365
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RELEASE"

    invoke-virtual {p0, v0, v1}, Lcom/jesusla/ane/Context;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public retainObject(Lcom/adobe/fre/FREObject;)I
    .locals 5
    .param p1, "object"    # Lcom/adobe/fre/FREObject;

    .prologue
    .line 361
    const-class v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    const-string v2, "__retainObject"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jesusla/ane/Context;->flashCall(Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/jesusla/ane/Context;
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setActionScriptThis(Lcom/adobe/fre/FREObject;)V
    .locals 6
    .param p1, "as3This"    # Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v4, 0x1

    .line 390
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jesusla/ane/Context;->setActionScriptData(Lcom/adobe/fre/FREObject;)V

    .line 391
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/jesusla/ane/Context;->actionScriptInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    invoke-virtual {p0}, Lcom/jesusla/ane/Context;->getActivity()Landroid/app/Activity;

    .line 397
    invoke-direct {p0}, Lcom/jesusla/ane/Context;->readProperties()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/jesusla/ane/Context;->properties:Landroid/os/Bundle;

    .line 398
    const-string v3, "ANEDebug"

    invoke-virtual {p0, v3}, Lcom/jesusla/ane/Context;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/jesusla/ane/Extension;->setDebug(Z)V

    .line 399
    invoke-virtual {p0}, Lcom/jesusla/ane/Context;->initContext()V

    .line 401
    iget-object v3, p0, Lcom/jesusla/ane/Context;->pendingRunnables:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 402
    .local v2, "ticket":Ljava/lang/String;
    const-string v3, "TICKET"

    invoke-virtual {p0, v2, v3}, Lcom/jesusla/ane/Context;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 392
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "ticket":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "setActionScriptThis %s"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v0, v3, v4}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 403
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected startActivity(Lcom/jesusla/ane/CustomActivityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/jesusla/ane/CustomActivityListener;

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/jesusla/ane/Context;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/jesusla/ane/CustomActivity;->startCustomActivity(Landroid/app/Activity;Lcom/jesusla/ane/CustomActivityListener;)V

    .line 455
    return-void
.end method

.method protected toFlash(Ljava/lang/Object;)Lcom/adobe/fre/FREObject;
    .locals 23
    .param p1, "javaObject"    # Ljava/lang/Object;

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    const/16 v18, 0x0

    .line 315
    .end local p0    # "this":Lcom/jesusla/ane/Context;
    .end local p1    # "javaObject":Ljava/lang/Object;
    :goto_0
    return-object v18

    .line 228
    .restart local p0    # "this":Lcom/jesusla/ane/Context;
    .restart local p1    # "javaObject":Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/adobe/fre/FREObject;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 229
    check-cast p1, Lcom/adobe/fre/FREObject;

    .end local p1    # "javaObject":Ljava/lang/Object;
    move-object/from16 v18, p1

    goto :goto_0

    .line 231
    .restart local p1    # "javaObject":Ljava/lang/Object;
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 232
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v18

    goto :goto_0

    .line 233
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Double;

    move/from16 v18, v0

    if-nez v18, :cond_3

    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Float;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 234
    :cond_3
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/adobe/fre/FREObject;->newObject(D)Lcom/adobe/fre/FREObject;

    move-result-object v18

    goto :goto_0

    .line 235
    :cond_4
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 236
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/adobe/fre/FREObject;->newObject(D)Lcom/adobe/fre/FREObject;

    move-result-object v18

    goto :goto_0

    .line 237
    :cond_5
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 238
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object v18

    goto :goto_0

    .line 239
    :cond_6
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/json/JSONObject;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 240
    const-string v18, "Object"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v15

    .line 241
    .local v15, "object":Lcom/adobe/fre/FREObject;
    move-object/from16 v0, p1

    check-cast v0, Lorg/json/JSONObject;

    move-object v11, v0

    .line 242
    .local v11, "json":Lorg/json/JSONObject;
    move-object/from16 v0, p1

    check-cast v0, Lorg/json/JSONObject;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 243
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 244
    .local v16, "prop":Ljava/lang/String;
    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    .line 245
    .local v17, "val":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/jesusla/ane/Context;->toFlash(Ljava/lang/Object;)Lcom/adobe/fre/FREObject;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREObject;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V
    :try_end_0
    .catch Lcom/adobe/fre/FREASErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 310
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "json":Lorg/json/JSONObject;
    .end local v15    # "object":Lcom/adobe/fre/FREObject;
    .end local v16    # "prop":Ljava/lang/String;
    .end local v17    # "val":Ljava/lang/Object;
    :catch_0
    move-exception v18

    move-object/from16 v6, v18

    .line 311
    .local v6, "e":Lcom/adobe/fre/FREASErrorException;
    const-string v18, "toFlash %s: %s"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v6}, Lcom/adobe/fre/FREASErrorException;->getThrownException()Lcom/adobe/fre/FREObject;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/jesusla/ane/Context;->describeError(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object v0, v6

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/jesusla/ane/Context;
    check-cast p0, Lcom/adobe/fre/FREObject;

    move-object/from16 v18, p0

    goto/16 :goto_0

    .end local v6    # "e":Lcom/adobe/fre/FREASErrorException;
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v11    # "json":Lorg/json/JSONObject;
    .restart local v15    # "object":Lcom/adobe/fre/FREObject;
    .restart local p0    # "this":Lcom/jesusla/ane/Context;
    :cond_7
    move-object/from16 v18, v15

    .line 247
    goto/16 :goto_0

    .line 249
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "json":Lorg/json/JSONObject;
    .end local v15    # "object":Lcom/adobe/fre/FREObject;
    :cond_8
    :try_start_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/json/JSONArray;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 250
    move-object/from16 v0, p1

    check-cast v0, Lorg/json/JSONArray;

    move-object v11, v0

    .line 251
    .local v11, "json":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v13

    .line 252
    .local v13, "len":I
    invoke-static {v13}, Lcom/adobe/fre/FREArray;->newArray(I)Lcom/adobe/fre/FREArray;

    move-result-object v4

    .line 253
    .local v4, "array":Lcom/adobe/fre/FREArray;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v13, :cond_9

    .line 254
    move v0, v8

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual {v11, v8}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jesusla/ane/Context;->toFlash(Ljava/lang/Object;)Lcom/adobe/fre/FREObject;

    move-result-object v20

    move-object v0, v4

    move-wide/from16 v1, v18

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/fre/FREArray;->setObjectAt(JLcom/adobe/fre/FREObject;)V

    .line 253
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_9
    move-object/from16 v18, v4

    .line 255
    goto/16 :goto_0

    .line 257
    .end local v4    # "array":Lcom/adobe/fre/FREArray;
    .end local v8    # "i":I
    .end local v11    # "json":Lorg/json/JSONArray;
    .end local v13    # "len":I
    :cond_a
    sget-object v18, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 258
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 259
    :cond_b
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 260
    const-string v18, "Object"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v15

    .line 261
    .restart local v15    # "object":Lcom/adobe/fre/FREObject;
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 262
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 263
    .local v12, "key":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    .line 264
    .restart local v17    # "val":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/jesusla/ane/Context;->toFlash(Ljava/lang/Object;)Lcom/adobe/fre/FREObject;

    move-result-object v18

    move-object v0, v15

    move-object v1, v12

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREObject;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V
    :try_end_1
    .catch Lcom/adobe/fre/FREASErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 312
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "key":Ljava/lang/String;
    .end local v15    # "object":Lcom/adobe/fre/FREObject;
    .end local v17    # "val":Ljava/lang/Object;
    :catch_1
    move-exception v18

    move-object/from16 v6, v18

    .line 313
    .local v6, "e":Ljava/lang/Exception;
    const-string v18, "toFlash %s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    aput-object v21, v19, v20

    move-object v0, v6

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/jesusla/ane/Context;
    check-cast p0, Lcom/adobe/fre/FREObject;

    move-object/from16 v18, p0

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v15    # "object":Lcom/adobe/fre/FREObject;
    .restart local p0    # "this":Lcom/jesusla/ane/Context;
    :cond_c
    move-object/from16 v18, v15

    .line 266
    goto/16 :goto_0

    .line 268
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v15    # "object":Lcom/adobe/fre/FREObject;
    :cond_d
    :try_start_2
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/util/List;

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 269
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    move-object v14, v0

    .line 270
    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    .line 271
    .restart local v13    # "len":I
    invoke-static {v13}, Lcom/adobe/fre/FREArray;->newArray(I)Lcom/adobe/fre/FREArray;

    move-result-object v4

    .line 272
    .restart local v4    # "array":Lcom/adobe/fre/FREArray;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    if-ge v8, v13, :cond_e

    .line 273
    move v0, v8

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jesusla/ane/Context;->toFlash(Ljava/lang/Object;)Lcom/adobe/fre/FREObject;

    move-result-object v20

    move-object v0, v4

    move-wide/from16 v1, v18

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/fre/FREArray;->setObjectAt(JLcom/adobe/fre/FREObject;)V

    .line 272
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_e
    move-object/from16 v18, v4

    .line 274
    goto/16 :goto_0

    .line 277
    .end local v4    # "array":Lcom/adobe/fre/FREArray;
    .end local v8    # "i":I
    .end local v13    # "len":I
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_f
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/os/Bundle;

    move/from16 v18, v0

    if-eqz v18, :cond_11

    .line 278
    const-string v18, "Object"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v15

    .line 279
    .restart local v15    # "object":Lcom/adobe/fre/FREObject;
    move-object/from16 v0, p1

    check-cast v0, Landroid/os/Bundle;

    move-object v5, v0

    .line 280
    .local v5, "bundle":Landroid/os/Bundle;
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 281
    .restart local v12    # "key":Ljava/lang/String;
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    .line 282
    .restart local v17    # "val":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/jesusla/ane/Context;->toFlash(Ljava/lang/Object;)Lcom/adobe/fre/FREObject;

    move-result-object v18

    move-object v0, v15

    move-object v1, v12

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREObject;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V

    goto :goto_5

    .end local v12    # "key":Ljava/lang/String;
    .end local v17    # "val":Ljava/lang/Object;
    :cond_10
    move-object/from16 v18, v15

    .line 284
    goto/16 :goto_0

    .line 286
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v15    # "object":Lcom/adobe/fre/FREObject;
    :cond_11
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/util/Date;

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 287
    const-string v18, "Date"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    check-cast v0, Ljava/util/Date;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/jesusla/ane/Context;->flashNew(Ljava/lang/String;[Ljava/lang/Object;)Lcom/adobe/fre/FREObject;

    move-result-object v18

    goto/16 :goto_0

    .line 289
    :cond_12
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/nio/ByteBuffer;

    move/from16 v18, v0

    if-eqz v18, :cond_13

    .line 290
    invoke-static {}, Lcom/adobe/fre/FREByteArray;->newByteArray()Lcom/adobe/fre/FREByteArray;

    move-result-object v15

    .line 291
    .local v15, "object":Lcom/adobe/fre/FREByteArray;
    invoke-virtual {v15}, Lcom/adobe/fre/FREByteArray;->acquire()V

    .line 292
    invoke-virtual {v15}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v18

    move-object/from16 v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    move-object v4, v0

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 293
    invoke-virtual {v15}, Lcom/adobe/fre/FREByteArray;->release()V

    move-object/from16 v18, v15

    .line 294
    goto/16 :goto_0

    .line 296
    .end local v15    # "object":Lcom/adobe/fre/FREByteArray;
    :cond_13
    move-object/from16 v0, p1

    instance-of v0, v0, [B

    move/from16 v18, v0

    if-eqz v18, :cond_14

    .line 297
    invoke-static {}, Lcom/adobe/fre/FREByteArray;->newByteArray()Lcom/adobe/fre/FREByteArray;

    move-result-object v15

    .line 298
    .restart local v15    # "object":Lcom/adobe/fre/FREByteArray;
    invoke-virtual {v15}, Lcom/adobe/fre/FREByteArray;->acquire()V

    .line 299
    invoke-virtual {v15}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v18

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v4, v0

    check-cast v4, [B

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 300
    invoke-virtual {v15}, Lcom/adobe/fre/FREByteArray;->release()V

    move-object/from16 v18, v15

    .line 301
    goto/16 :goto_0

    .line 303
    .end local v15    # "object":Lcom/adobe/fre/FREByteArray;
    :cond_14
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->isArray()Z

    move-result v18

    if-eqz v18, :cond_16

    .line 304
    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v13

    .line 305
    .restart local v13    # "len":I
    invoke-static {v13}, Lcom/adobe/fre/FREArray;->newArray(I)Lcom/adobe/fre/FREArray;

    move-result-object v4

    .line 306
    .restart local v4    # "array":Lcom/adobe/fre/FREArray;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_6
    if-ge v8, v13, :cond_15

    .line 307
    move v0, v8

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move v1, v8

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jesusla/ane/Context;->toFlash(Ljava/lang/Object;)Lcom/adobe/fre/FREObject;

    move-result-object v20

    move-object v0, v4

    move-wide/from16 v1, v18

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/fre/FREArray;->setObjectAt(JLcom/adobe/fre/FREObject;)V
    :try_end_2
    .catch Lcom/adobe/fre/FREASErrorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 306
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_15
    move-object/from16 v18, v4

    .line 308
    goto/16 :goto_0

    .line 315
    .end local v4    # "array":Lcom/adobe/fre/FREArray;
    .end local v8    # "i":I
    .end local v13    # "len":I
    :cond_16
    const-string v18, "toFlash %s: unable to convert"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/jesusla/ane/Context;
    check-cast p0, Lcom/adobe/fre/FREObject;

    move-object/from16 v18, p0

    goto/16 :goto_0
.end method

.method public toFlash([Ljava/lang/Object;)[Lcom/adobe/fre/FREObject;
    .locals 4
    .param p1, "javaObjects"    # [Ljava/lang/Object;

    .prologue
    .line 319
    array-length v2, p1

    .line 320
    .local v2, "len":I
    new-array v0, v2, [Lcom/adobe/fre/FREObject;

    .line 321
    .local v0, "flashObjects":[Lcom/adobe/fre/FREObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 322
    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/jesusla/ane/Context;->toFlash(Ljava/lang/Object;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    aput-object v3, v0, v1

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    :cond_0
    return-object v0
.end method
