.class final Lcom/aarki/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aarki/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/Date;

.field final b:Ljava/lang/String;

.field final c:Z

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v2, 0x5

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, ":"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 59
    array-length v1, v0

    if-ne v1, v2, :cond_0

    move v1, v7

    .line 63
    :goto_0
    if-eqz v1, :cond_3

    .line 65
    :try_start_0
    new-instance v2, Ljava/util/Date;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_1
    const-string v3, "activity"

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 70
    const/4 v4, 0x4

    aget-object v4, v0, v4

    invoke-static {v4}, Lcom/aarki/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object v8, v4

    move-object v4, v2

    move-object v2, v8

    .line 72
    :goto_2
    if-eqz v1, :cond_1

    aget-object v5, v0, v5

    :goto_3
    iput-object v5, p0, Lcom/aarki/a$a;->e:Ljava/lang/String;

    .line 73
    if-eqz v1, :cond_2

    aget-object v0, v0, v7

    :goto_4
    iput-object v0, p0, Lcom/aarki/a$a;->b:Ljava/lang/String;

    .line 74
    iput-boolean v3, p0, Lcom/aarki/a$a;->c:Z

    .line 75
    iput-object v4, p0, Lcom/aarki/a$a;->a:Ljava/util/Date;

    .line 76
    iput-object v2, p0, Lcom/aarki/a$a;->d:Ljava/util/List;

    .line 77
    return-void

    :cond_0
    move v1, v5

    .line 59
    goto :goto_0

    .line 66
    :catch_0
    move-exception v2

    .line 67
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getLocalizedMessage()Ljava/lang/String;

    move-object v2, v6

    goto :goto_1

    :cond_1
    move-object v5, v6

    .line 72
    goto :goto_3

    :cond_2
    move-object v0, v6

    .line 73
    goto :goto_4

    :cond_3
    move-object v2, v6

    move v3, v5

    move-object v4, v6

    goto :goto_2
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Date;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "w"

    iput-object v0, p0, Lcom/aarki/a$a;->e:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/aarki/a$a;->b:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/aarki/a$a;->a:Ljava/util/Date;

    .line 52
    iput-boolean p3, p0, Lcom/aarki/a$a;->c:Z

    .line 53
    iput-object p4, p0, Lcom/aarki/a$a;->d:Ljava/util/List;

    .line 54
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3a

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/aarki/a$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lcom/aarki/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Lcom/aarki/a$a;->a:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    iget-boolean v1, p0, Lcom/aarki/a$a;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "activity"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/aarki/a$a;->d:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/aarki/c;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    const-string v1, "event"

    goto :goto_0
.end method
