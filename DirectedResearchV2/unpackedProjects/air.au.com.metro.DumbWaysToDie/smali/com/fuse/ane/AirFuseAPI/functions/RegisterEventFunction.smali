.class public Lcom/fuse/ane/AirFuseAPI/functions/RegisterEventFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 13

    const/4 v2, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x3

    const-class v0, Lcom/adobe/fre/FREArray;

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    array-length v0, p2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lcom/fusepowered/fuseapi/FuseAPI;->registerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/fusepowered/util/FuseEvent;

    :goto_0
    return-object v11

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/adobe/fre/FREArray;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/adobe/fre/FREArray;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    aget-object p0, p2, v0

    check-cast p0, Lcom/adobe/fre/FREArray;

    const/4 v0, 0x2

    aget-object v0, p2, v0

    check-cast v0, Lcom/adobe/fre/FREArray;

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    int-to-long v6, v5

    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    int-to-long v6, v5

    invoke-virtual {p0, v6, v7}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    int-to-long v7, v5

    invoke-virtual {v0, v7, v8}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move-object v12, v4

    move-object v4, v3

    move-object v3, v12

    :goto_2
    array-length v0, p2

    if-le v0, v10, :cond_7

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v5, Lcom/adobe/fre/FREArray;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v5, Lcom/adobe/fre/FREArray;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    aget-object p0, p2, v0

    check-cast p0, Lcom/adobe/fre/FREArray;

    const/4 v0, 0x4

    aget-object v0, p2, v0

    check-cast v0, Lcom/adobe/fre/FREArray;

    const/4 v5, 0x0

    :goto_3
    int-to-long v6, v5

    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v7, v5

    invoke-virtual {v0, v7, v8}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    int-to-double v9, v6

    cmpg-double v9, v9, v7

    if-gez v9, :cond_3

    int-to-long v9, v5

    invoke-virtual {p0, v9, v10}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    goto :goto_2

    :cond_3
    int-to-long v7, v5

    invoke-virtual {p0, v7, v8}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "ERROR Illegal State"

    invoke-static {v1}, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtension;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x4

    :try_start_1
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v0

    const/4 v5, 0x4

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v5

    int-to-double v7, v0

    cmpg-double v7, v7, v5

    if-gez v7, :cond_6

    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_5
    invoke-static {v1, v4, v3, v2}, Lcom/fusepowered/fuseapi/FuseAPI;->registerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fusepowered/util/FuseEvent;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ERROR ERROR ERROR Got a type wrong!"

    invoke-static {v1}, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtension;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x3

    :try_start_2
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_5

    :catch_2
    move-exception v0

    const-string v1, "ERROR Invalid Object"

    invoke-static {v1}, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtension;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    :try_start_3
    invoke-static {v1, v2}, Lcom/fusepowered/fuseapi/FuseAPI;->registerEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-string v1, "ERROR Wrong Thread"

    invoke-static {v1}, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtension;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto/16 :goto_0
.end method
