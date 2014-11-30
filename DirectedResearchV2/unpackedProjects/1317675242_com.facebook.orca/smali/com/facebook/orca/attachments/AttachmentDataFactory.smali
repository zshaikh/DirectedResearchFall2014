.class public Lcom/facebook/orca/attachments/AttachmentDataFactory;
.super Ljava/lang/Object;
.source "AttachmentDataFactory.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:Lcom/facebook/orca/config/OrcaHttpConfig;

.field private final d:Lcom/facebook/orca/auth/AuthenticationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "_[ts]\\.jpg$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a:Ljava/util/regex/Pattern;

    .line 28
    const-string v0, "\\/[ts]([^/]+\\.jpg)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/config/OrcaHttpConfig;Lcom/facebook/orca/auth/AuthenticationManager;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->c:Lcom/facebook/orca/config/OrcaHttpConfig;

    .line 38
    iput-object p2, p0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->d:Lcom/facebook/orca/auth/AuthenticationManager;

    .line 39
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/threads/AttachmentInfo;)Landroid/net/Uri;
    .locals 3
    .param p2    # Lcom/facebook/orca/threads/AttachmentInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 163
    iget-object v0, p0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->c:Lcom/facebook/orca/config/OrcaHttpConfig;

    invoke-interface {v0}, Lcom/facebook/orca/config/OrcaHttpConfig;->a()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 164
    const-string v1, "method/messaging.getAttachment"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 165
    const-string v1, "mid"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 166
    if-eqz p2, :cond_0

    .line 167
    const-string v1, "aid"

    invoke-virtual {p2}, Lcom/facebook/orca/threads/AttachmentInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 172
    :goto_0
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->d:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v2}, Lcom/facebook/orca/auth/AuthenticationManager;->a()Lcom/facebook/orca/auth/FacebookCredentials;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/auth/FacebookCredentials;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 174
    const-string v1, "format"

    const-string v2, "binary"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 175
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 170
    :cond_0
    const-string v1, "aid"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/AttachmentInfo;)Lcom/facebook/orca/attachments/ImageAttachmentData;
    .locals 2
    .param p2    # Lcom/facebook/orca/threads/AttachmentInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Ljava/lang/String;Lcom/facebook/orca/threads/AttachmentInfo;)Landroid/net/Uri;

    move-result-object v0

    .line 148
    new-instance v1, Lcom/facebook/orca/attachments/ImageAttachmentData;

    invoke-direct {v1, v0, v0}, Lcom/facebook/orca/attachments/ImageAttachmentData;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v1
.end method

.method private b(Lcom/facebook/orca/share/ShareMedia;)Lcom/facebook/orca/attachments/ImageAttachmentData;
    .locals 3

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->c(Lcom/facebook/orca/share/ShareMedia;)Landroid/net/Uri;

    move-result-object v0

    .line 141
    invoke-direct {p0, p1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->d(Lcom/facebook/orca/share/ShareMedia;)Landroid/net/Uri;

    move-result-object v1

    .line 142
    new-instance v2, Lcom/facebook/orca/attachments/ImageAttachmentData;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/attachments/ImageAttachmentData;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v2
.end method

.method private b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/AttachmentInfo;)Lcom/facebook/orca/attachments/OtherAttachmentData;
    .locals 5

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Ljava/lang/String;Lcom/facebook/orca/threads/AttachmentInfo;)Landroid/net/Uri;

    move-result-object v0

    .line 154
    new-instance v1, Lcom/facebook/orca/attachments/OtherAttachmentData;

    invoke-virtual {p2}, Lcom/facebook/orca/threads/AttachmentInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/orca/threads/AttachmentInfo;->e()I

    move-result v3

    invoke-virtual {p2}, Lcom/facebook/orca/threads/AttachmentInfo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/facebook/orca/attachments/OtherAttachmentData;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method

.method private c(Lcom/facebook/orca/share/ShareMedia;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMedia;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/facebook/orca/share/ShareMedia;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMedia;->d()Ljava/lang/String;

    move-result-object v0

    .line 199
    sget-object v1, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 200
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    const-string v0, "_n.jpg"

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    :cond_0
    sget-object v1, Lcom/facebook/orca/attachments/AttachmentDataFactory;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threads/ThreadSummary;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->r()Landroid/net/Uri;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->c:Lcom/facebook/orca/config/OrcaHttpConfig;

    invoke-interface {v0}, Lcom/facebook/orca/config/OrcaHttpConfig;->a()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 183
    const-string v1, "method/messaging.getAttachment"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 184
    const-string v1, "tid"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 185
    const-string v1, "hash"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 186
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->d:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v2}, Lcom/facebook/orca/auth/AuthenticationManager;->a()Lcom/facebook/orca/auth/FacebookCredentials;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/auth/FacebookCredentials;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 188
    const-string v1, "format"

    const-string v2, "binary"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 189
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/share/ShareMedia;)Lcom/facebook/orca/attachments/ImageAttachmentData;
    .locals 2

    .prologue
    .line 133
    const-string v0, "photo"

    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMedia;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0, p1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->b(Lcom/facebook/orca/share/ShareMedia;)Lcom/facebook/orca/attachments/ImageAttachmentData;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/threads/Message;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->m()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    move v0, v4

    .line 67
    :goto_0
    return v0

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->h()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    .line 48
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->h()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/AttachmentInfo;

    .line 52
    invoke-virtual {p0}, Lcom/facebook/orca/threads/AttachmentInfo;->c()Ljava/lang/String;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_2

    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v4

    .line 54
    goto :goto_0

    :cond_3
    move v0, v3

    .line 67
    goto :goto_0
.end method

.method public b(Lcom/facebook/orca/threads/Message;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/Message;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/attachments/ImageAttachmentData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->m()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/AttachmentInfo;)Lcom/facebook/orca/attachments/ImageAttachmentData;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->h()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 81
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->h()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/AttachmentInfo;

    .line 82
    invoke-virtual {v0}, Lcom/facebook/orca/threads/AttachmentInfo;->c()Ljava/lang/String;

    move-result-object v3

    .line 83
    if-eqz v3, :cond_2

    const-string v4, "image/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/AttachmentInfo;)Lcom/facebook/orca/attachments/ImageAttachmentData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Lcom/facebook/orca/threads/Message;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->h()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 113
    :goto_0
    return v0

    .line 107
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->h()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/AttachmentInfo;

    .line 108
    invoke-virtual {p0}, Lcom/facebook/orca/threads/AttachmentInfo;->c()Ljava/lang/String;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_1

    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 113
    goto :goto_0
.end method

.method public d(Lcom/facebook/orca/threads/Message;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/Message;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/attachments/OtherAttachmentData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->h()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    .line 122
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 123
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->h()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/AttachmentInfo;

    .line 124
    invoke-virtual {v0}, Lcom/facebook/orca/threads/AttachmentInfo;->c()Ljava/lang/String;

    move-result-object v3

    .line 125
    if-eqz v3, :cond_1

    const-string v4, "image/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 126
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/AttachmentInfo;)Lcom/facebook/orca/attachments/OtherAttachmentData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 129
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method
