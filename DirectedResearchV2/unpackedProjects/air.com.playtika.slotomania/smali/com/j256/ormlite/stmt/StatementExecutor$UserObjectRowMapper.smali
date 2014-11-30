.class Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;
.super Ljava/lang/Object;
.source "StatementExecutor.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/GenericRowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/stmt/StatementExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserObjectRowMapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/stmt/GenericRowMapper",
        "<TUO;>;"
    }
.end annotation


# instance fields
.field private final columnNames:[Ljava/lang/String;

.field private final mapper:Lcom/j256/ormlite/dao/RawRowMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RawRowMapper",
            "<TUO;>;"
        }
    .end annotation
.end field

.field private final stringRowMapper:Lcom/j256/ormlite/stmt/GenericRowMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/GenericRowMapper",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/dao/RawRowMapper;[Ljava/lang/String;Lcom/j256/ormlite/stmt/GenericRowMapper;)V
    .locals 0
    .param p2, "columnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/RawRowMapper",
            "<TUO;>;[",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/stmt/GenericRowMapper",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 541
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;, "Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper<TUO;>;"
    .local p1, "mapper":Lcom/j256/ormlite/dao/RawRowMapper;, "Lcom/j256/ormlite/dao/RawRowMapper<TUO;>;"
    .local p3, "stringMapper":Lcom/j256/ormlite/stmt/GenericRowMapper;, "Lcom/j256/ormlite/stmt/GenericRowMapper<[Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    iput-object p1, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;->mapper:Lcom/j256/ormlite/dao/RawRowMapper;

    .line 543
    iput-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;->columnNames:[Ljava/lang/String;

    .line 544
    iput-object p3, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;->stringRowMapper:Lcom/j256/ormlite/stmt/GenericRowMapper;

    .line 545
    return-void
.end method


# virtual methods
.method public mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;
    .locals 3
    .param p1, "results"    # Lcom/j256/ormlite/support/DatabaseResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseResults;",
            ")TUO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 548
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;, "Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper<TUO;>;"
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;->stringRowMapper:Lcom/j256/ormlite/stmt/GenericRowMapper;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/stmt/GenericRowMapper;->mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 549
    .local v0, "stringResults":[Ljava/lang/String;
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;->mapper:Lcom/j256/ormlite/dao/RawRowMapper;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;->columnNames:[Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/j256/ormlite/dao/RawRowMapper;->mapRow([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
