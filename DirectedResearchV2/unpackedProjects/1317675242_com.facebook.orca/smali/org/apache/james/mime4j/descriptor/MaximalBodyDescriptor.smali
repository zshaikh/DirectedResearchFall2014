.class public Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;
.super Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;
.source "MaximalBodyDescriptor.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lorg/apache/james/mime4j/field/datetime/DateTime;

.field private k:Lorg/apache/james/mime4j/MimeException;

.field private l:Lorg/apache/james/mime4j/field/datetime/DateTime;

.field private m:Lorg/apache/james/mime4j/MimeException;

.field private n:Lorg/apache/james/mime4j/field/datetime/DateTime;

.field private o:Lorg/apache/james/mime4j/MimeException;

.field private p:J

.field private q:Lorg/apache/james/mime4j/MimeException;

.field private r:Z

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lorg/apache/james/mime4j/MimeException;

.field private u:Lorg/apache/james/mime4j/MimeException;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    .line 79
    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->a:Z

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->c:I

    .line 81
    iput v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->b:I

    .line 82
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->d:Ljava/lang/String;

    .line 83
    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->e:Z

    .line 84
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->f:Ljava/lang/String;

    .line 85
    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->g:Z

    .line 86
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->h:Ljava/lang/String;

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->i:Ljava/util/Map;

    .line 88
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->j:Lorg/apache/james/mime4j/field/datetime/DateTime;

    .line 89
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->k:Lorg/apache/james/mime4j/MimeException;

    .line 90
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->l:Lorg/apache/james/mime4j/field/datetime/DateTime;

    .line 91
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->m:Lorg/apache/james/mime4j/MimeException;

    .line 92
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->n:Lorg/apache/james/mime4j/field/datetime/DateTime;

    .line 93
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->o:Lorg/apache/james/mime4j/MimeException;

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->p:J

    .line 95
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->q:Lorg/apache/james/mime4j/MimeException;

    .line 96
    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->r:Z

    .line 97
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->s:Ljava/util/List;

    .line 98
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->t:Lorg/apache/james/mime4j/MimeException;

    .line 99
    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->e:Z

    .line 100
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->v:Ljava/lang/String;

    .line 101
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->u:Lorg/apache/james/mime4j/MimeException;

    .line 102
    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->w:Z

    .line 103
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->x:Ljava/lang/String;

    .line 104
    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->y:Z

    .line 105
    return-void
.end method
