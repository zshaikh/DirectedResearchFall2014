.class public Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;
.super Lcom/j256/ormlite/db/BaseSqliteDatabaseType;
.source "SqliteAndroidDatabaseType.java"

# interfaces
.implements Lcom/j256/ormlite/db/DatabaseType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/db/SqliteAndroidDatabaseType$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/j256/ormlite/db/BaseSqliteDatabaseType;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method protected appendBooleanType(Ljava/lang/StringBuilder;I)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldWidth"    # I

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;->appendShortType(Ljava/lang/StringBuilder;I)V

    .line 49
    return-void
.end method

.method protected appendDateType(Ljava/lang/StringBuilder;I)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldWidth"    # I

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;->appendStringType(Ljava/lang/StringBuilder;I)V

    .line 43
    return-void
.end method

.method public extractDatabaseTableConfig(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;
    .locals 1
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 75
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1, p2}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->fromClass(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "Android SQLite"

    return-object v0
.end method

.method protected getDriverClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFieldConverter(Lcom/j256/ormlite/field/DataPersister;)Lcom/j256/ormlite/field/FieldConverter;
    .locals 2
    .param p1, "dataPersister"    # Lcom/j256/ormlite/field/DataPersister;

    .prologue
    .line 54
    sget-object v0, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType$1;->$SwitchMap$com$j256$ormlite$field$SqlType:[I

    invoke-interface {p1}, Lcom/j256/ormlite/field/DataPersister;->getSqlType()Lcom/j256/ormlite/field/SqlType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 58
    invoke-super {p0, p1}, Lcom/j256/ormlite/db/BaseSqliteDatabaseType;->getFieldConverter(Lcom/j256/ormlite/field/DataPersister;)Lcom/j256/ormlite/field/FieldConverter;

    move-result-object v0

    :goto_0
    return-object v0

    .line 56
    :pswitch_0
    invoke-static {}, Lcom/j256/ormlite/field/types/DateStringType;->getSingleton()Lcom/j256/ormlite/field/types/DateStringType;

    move-result-object v0

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isBatchUseTransaction()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public isDatabaseUrlThisType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "dbTypePart"    # Ljava/lang/String;

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public isNestedSavePointsSupported()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public loadDriver()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method
