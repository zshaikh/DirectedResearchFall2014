.class public Lcom/j256/ormlite/field/types/DateTimeType;
.super Lcom/j256/ormlite/field/types/BaseDataType;
.source "DateTimeType.java"


# static fields
.field private static final associatedClassNames:[Ljava/lang/String;

.field private static dateTimeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static getMillisMethod:Ljava/lang/reflect/Method;

.field private static millisConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static final singleTon:Lcom/j256/ormlite/field/types/DateTimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 27
    new-instance v0, Lcom/j256/ormlite/field/types/DateTimeType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/DateTimeType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->singleTon:Lcom/j256/ormlite/field/types/DateTimeType;

    .line 28
    sput-object v1, Lcom/j256/ormlite/field/types/DateTimeType;->dateTimeClass:Ljava/lang/Class;

    .line 29
    sput-object v1, Lcom/j256/ormlite/field/types/DateTimeType;->getMillisMethod:Ljava/lang/reflect/Method;

    .line 30
    sput-object v1, Lcom/j256/ormlite/field/types/DateTimeType;->millisConstructor:Ljava/lang/reflect/Constructor;

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "org.joda.time.DateTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->associatedClassNames:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->LONG:Lcom/j256/ormlite/field/SqlType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 35
    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V
    .locals 0
    .param p1, "sqlType"    # Lcom/j256/ormlite/field/SqlType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/field/SqlType;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 39
    return-void
.end method

.method private getConstructor()Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    sget-object v1, Lcom/j256/ormlite/field/types/DateTimeType;->millisConstructor:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/j256/ormlite/field/types/DateTimeType;->getDateTimeClass()Ljava/lang/Class;

    move-result-object v0

    .line 105
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/j256/ormlite/field/types/DateTimeType;->millisConstructor:Ljava/lang/reflect/Constructor;

    .line 107
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    sget-object v1, Lcom/j256/ormlite/field/types/DateTimeType;->millisConstructor:Ljava/lang/reflect/Constructor;

    return-object v1
.end method

.method private getDateTimeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 111
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->dateTimeClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 112
    const-string v0, "org.joda.time.DateTime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->dateTimeClass:Ljava/lang/Class;

    .line 114
    :cond_0
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->dateTimeClass:Ljava/lang/Class;

    return-object v0
.end method

.method private getMillisMethod()Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    sget-object v1, Lcom/j256/ormlite/field/types/DateTimeType;->getMillisMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/j256/ormlite/field/types/DateTimeType;->getDateTimeClass()Ljava/lang/Class;

    move-result-object v0

    .line 97
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getMillis"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/j256/ormlite/field/types/DateTimeType;->getMillisMethod:Ljava/lang/reflect/Method;

    .line 99
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    sget-object v1, Lcom/j256/ormlite/field/types/DateTimeType;->getMillisMethod:Ljava/lang/reflect/Method;

    return-object v1
.end method

.method public static getSingleton()Lcom/j256/ormlite/field/types/DateTimeType;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->singleTon:Lcom/j256/ormlite/field/types/DateTimeType;

    return-object v0
.end method


# virtual methods
.method public getAssociatedClassNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->associatedClassNames:[Ljava/lang/String;

    return-object v0
.end method

.method public isAppropriateId()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public isEscapedValue()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public javaToSqlArg(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "javaObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/j256/ormlite/field/types/DateTimeType;->getMillisMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 54
    .local v1, "method":Ljava/lang/reflect/Method;
    if-nez p2, :cond_0

    .line 55
    const/4 v2, 0x0

    .line 57
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 59
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not use reflection to get millis from Joda DateTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
.end method

.method public parseDefaultString(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "defaultStr"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public resultToSqlArg(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "results"    # Lcom/j256/ormlite/support/DatabaseResults;
    .param p3, "columnPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-interface {p2, p3}, Lcom/j256/ormlite/support/DatabaseResults;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "sqlArg"    # Ljava/lang/Object;
    .param p3, "columnPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    invoke-direct {p0}, Lcom/j256/ormlite/field/types/DateTimeType;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 78
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    check-cast p2, Ljava/lang/Long;

    .end local p2    # "sqlArg":Ljava/lang/Object;
    aput-object p2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 79
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Could not use reflection to construct a Joda DateTime"

    invoke-static {v2, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
.end method
