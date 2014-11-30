.class public Lcom/j256/ormlite/android/apptools/OpenHelperManager;
.super Ljava/lang/Object;
.source "OpenHelperManager.java"


# static fields
.field private static final HELPER_CLASS_RESOURCE_NAME:Ljava/lang/String; = "open_helper_classname"

.field private static volatile helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

.field private static helperClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static instanceCount:I

.field private static logger:Lcom/j256/ormlite/logger/Logger;

.field private static wasClosed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    const-class v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 41
    sput-object v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    .line 42
    sput-object v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 43
    sput-boolean v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->wasClosed:Z

    .line 44
    sput v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constructHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">;)",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "openHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;>;"
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 214
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    check-cast p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 209
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find constructor that takes a Context argument for helper class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 215
    .end local v1    # "e":Ljava/lang/Exception;
    .end local p0    # "context":Landroid/content/Context;
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 216
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not construct instance of helper class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static declared-synchronized getHelper(Landroid/content/Context;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 97
    const-class v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    if-nez v2, :cond_1

    .line 98
    if-nez p0, :cond_0

    .line 99
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 101
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 102
    .local v0, "appContext":Landroid/content/Context;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->lookupHelperClass(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->innerSetHelperClass(Ljava/lang/Class;)V

    .line 104
    .end local v0    # "appContext":Landroid/content/Context;
    :cond_1
    sget-object v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    invoke-static {p0, v2}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->loadHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit v1

    return-object v2
.end method

.method public static declared-synchronized getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "openHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->innerSetHelperClass(Ljava/lang/Class;)V

    .line 75
    invoke-static {p0, p1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->loadHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static innerSetHelperClass(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "openHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;>;"
    sget-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 148
    sput-object p0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    .line 153
    :cond_0
    return-void

    .line 149
    :cond_1
    sget-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    if-eq v0, p0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Helper class was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but is trying to be reset to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static loadHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "openHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    if-nez v2, :cond_2

    .line 157
    sget-boolean v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->wasClosed:Z

    if-eqz v2, :cond_0

    .line 159
    sget-object v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "helper was already closed and is being re-opened"

    invoke-virtual {v2, v3}, Lcom/j256/ormlite/logger/Logger;->info(Ljava/lang/String;)V

    .line 161
    :cond_0
    if-nez p0, :cond_1

    .line 162
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 165
    .local v0, "appContext":Landroid/content/Context;
    sget-object v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->constructHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v2

    sput-object v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 166
    sget-object v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "zero instances, created helper {}"

    sget-object v4, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    invoke-static {}, Lcom/j256/ormlite/dao/BaseDaoImpl;->clearAllInternalObjectCaches()V

    .line 190
    invoke-static {}, Lcom/j256/ormlite/dao/DaoManager;->clearDaoCache()V

    .line 191
    const/4 v2, 0x0

    sput v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    .line 194
    .end local v0    # "appContext":Landroid/content/Context;
    :cond_2
    sget v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    .line 195
    sget-object v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "returning helper {}, instance count = {} "

    sget-object v4, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    sget v5, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
    sget-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 198
    .local v1, "castHelper":Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;, "TT;"
    return-object v1
.end method

.method private static lookupHelperClass(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<+",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 227
    .local v0, "resources":Landroid/content/res/Resources;
    const-string v1, "open_helper_classname"

    const-string v2, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 228
    .local p0, "resourceId":I
    if-eqz p0, :cond_0

    .line 229
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 232
    .local p0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 263
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local p0    # "className":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 235
    .restart local v0    # "resources":Landroid/content/res/Resources;
    .restart local p0    # "className":Ljava/lang/String;
    :catch_0
    move-exception p1

    .line 236
    .local p1, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/IllegalStateException;

    .end local v0    # "resources":Landroid/content/res/Resources;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create helper instance for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0    # "className":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 241
    .restart local v0    # "resources":Landroid/content/res/Resources;
    .local p0, "resourceId":I
    .local p1, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object p0, p1

    .local p0, "componentClassWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p0

    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local p0    # "componentClassWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "componentClassWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v1, :cond_5

    .line 243
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 244
    .local p0, "superType":Ljava/lang/reflect/Type;
    if-eqz p0, :cond_1

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_2

    .line 241
    .end local p0    # "superType":Ljava/lang/reflect/Type;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .end local v1    # "componentClassWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p0, "componentClassWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p0

    .end local p0    # "componentClassWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "componentClassWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 248
    .local p0, "superType":Ljava/lang/reflect/Type;
    :cond_2
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "superType":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 250
    .local p0, "types":[Ljava/lang/reflect/Type;
    if-eqz p0, :cond_1

    array-length v0, p0

    if-eqz v0, :cond_1

    .line 253
    move-object p0, p0

    .local p0, "arr$":[Ljava/lang/reflect/Type;
    array-length v3, p0

    .local v3, "len$":I
    const/4 v0, 0x0

    .local v0, "i$":I
    move v2, v0

    .end local v0    # "i$":I
    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_1

    aget-object v0, p0, v2

    .line 255
    .local v0, "type":Ljava/lang/reflect/Type;
    instance-of v4, v0, Ljava/lang/Class;

    if-nez v4, :cond_4

    .line 253
    .end local v0    # "type":Ljava/lang/reflect/Type;
    :cond_3
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i$":I
    .local v0, "i$":I
    move v2, v0

    .end local v0    # "i$":I
    .restart local v2    # "i$":I
    goto :goto_2

    .line 258
    .local v0, "type":Ljava/lang/reflect/Type;
    :cond_4
    check-cast v0, Ljava/lang/Class;

    .line 259
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 261
    move-object p0, v0

    .line 263
    .local p0, "castOpenHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;>;"
    goto :goto_0

    .line 267
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local p0    # "castOpenHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;>;"
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find OpenHelperClass because none of the generic parameters of class "

    .end local v1    # "componentClassWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1    # "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, " extends OrmLiteSqliteOpenHelper.  You should use getHelper(Context, Class) instead."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static release()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    .line 113
    return-void
.end method

.method public static declared-synchronized releaseHelper()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 127
    const-class v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    sub-int/2addr v1, v2

    sput v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    .line 128
    sget-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "releasing helper {}, instance count = {}"

    sget-object v3, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    sget v4, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    sget v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    if-gtz v1, :cond_1

    .line 130
    sget-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    if-eqz v1, :cond_0

    .line 131
    sget-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "zero instances, closing helper {}"

    sget-object v3, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    sget-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    .line 133
    const/4 v1, 0x0

    sput-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 134
    const/4 v1, 0x1

    sput-boolean v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->wasClosed:Z

    .line 136
    :cond_0
    sget v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    if-gez v1, :cond_1

    .line 137
    sget-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "too many calls to release helper, instance count = {}"

    sget v3, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_1
    monitor-exit v0

    return-void

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setHelper(Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;)V
    .locals 2
    .param p0, "helper"    # Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .prologue
    .line 64
    const-class v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v0

    return-void

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setOpenHelperClass(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "openHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;>;"
    const-class v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 52
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :goto_0
    monitor-exit v0

    return-void

    .line 54
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->innerSetHelperClass(Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
