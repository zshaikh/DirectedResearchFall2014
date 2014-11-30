.class public Lcom/j256/ormlite/stmt/query/SetValue;
.super Lcom/j256/ormlite/stmt/query/BaseComparison;
.source "SetValue.java"


# static fields
.field private static final nullValue:Lcom/j256/ormlite/stmt/ArgumentHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/j256/ormlite/stmt/NullArgHolder;

    invoke-direct {v0}, Lcom/j256/ormlite/stmt/NullArgHolder;-><init>()V

    sput-object v0, Lcom/j256/ormlite/stmt/query/SetValue;->nullValue:Lcom/j256/ormlite/stmt/ArgumentHolder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)V
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 29
    if-nez p3, :cond_0

    sget-object v0, Lcom/j256/ormlite/stmt/query/SetValue;->nullValue:Lcom/j256/ormlite/stmt/ArgumentHolder;

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/j256/ormlite/stmt/query/BaseComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Z)V

    .line 30
    return-void

    :cond_0
    move-object v0, p3

    .line 29
    goto :goto_0
.end method


# virtual methods
.method public appendOperation(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 34
    const-string v0, "= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    return-void
.end method

.method public bridge synthetic appendSql(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 0
    .param p1, "x0"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p2, "x1"    # Ljava/lang/StringBuilder;
    .param p3, "x2"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-super {p0, p1, p2, p3}, Lcom/j256/ormlite/stmt/query/BaseComparison;->appendSql(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic appendValue(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 0
    .param p1, "x0"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p2, "x1"    # Ljava/lang/StringBuilder;
    .param p3, "x2"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-super {p0, p1, p2, p3}, Lcom/j256/ormlite/stmt/query/BaseComparison;->appendValue(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/j256/ormlite/stmt/query/BaseComparison;->getColumnName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/j256/ormlite/stmt/query/BaseComparison;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method