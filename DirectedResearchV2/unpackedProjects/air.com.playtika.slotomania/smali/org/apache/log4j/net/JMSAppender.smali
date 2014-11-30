.class public Lorg/apache/log4j/net/JMSAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "JMSAppender.java"


# instance fields
.field initialContextFactoryName:Ljava/lang/String;

.field locationInfo:Z

.field password:Ljava/lang/String;

.field providerURL:Ljava/lang/String;

.field securityCredentials:Ljava/lang/String;

.field securityPrincipalName:Ljava/lang/String;

.field tcfBindingName:Ljava/lang/String;

.field topicBindingName:Ljava/lang/String;

.field topicConnection:Ljavax/jms/TopicConnection;

.field topicPublisher:Ljavax/jms/TopicPublisher;

.field topicSession:Ljavax/jms/TopicSession;

.field urlPkgPrefixes:Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 120
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const-string v9, "]."

    .line 177
    :try_start_0
    const-string v5, "Getting initial context."

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 178
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->initialContextFactoryName:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 179
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 180
    .local v1, "env":Ljava/util/Properties;
    const-string v5, "java.naming.factory.initial"

    iget-object v6, p0, Lorg/apache/log4j/net/JMSAppender;->initialContextFactoryName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->providerURL:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 182
    const-string v5, "java.naming.provider.url"

    iget-object v6, p0, Lorg/apache/log4j/net/JMSAppender;->providerURL:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :goto_0
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->urlPkgPrefixes:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 188
    const-string v5, "java.naming.factory.url.pkgs"

    iget-object v6, p0, Lorg/apache/log4j/net/JMSAppender;->urlPkgPrefixes:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_0
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->securityPrincipalName:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 192
    const-string v5, "java.naming.security.principal"

    iget-object v6, p0, Lorg/apache/log4j/net/JMSAppender;->securityPrincipalName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->securityCredentials:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 194
    const-string v5, "java.naming.security.credentials"

    iget-object v6, p0, Lorg/apache/log4j/net/JMSAppender;->securityCredentials:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_1
    :goto_1
    new-instance v2, Ljavax/naming/InitialContext;

    invoke-direct {v2, v1}, Ljavax/naming/InitialContext;-><init>(Ljava/util/Hashtable;)V

    .line 205
    .end local v1    # "env":Ljava/util/Properties;
    .local v2, "jndi":Ljavax/naming/Context;
    :goto_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Looking up ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/log4j/net/JMSAppender;->tcfBindingName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 206
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->tcfBindingName:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lorg/apache/log4j/net/JMSAppender;->lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jms/TopicConnectionFactory;

    .line 207
    .local v4, "topicConnectionFactory":Ljavax/jms/TopicConnectionFactory;
    const-string v5, "About to create TopicConnection."

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 208
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->userName:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 209
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->userName:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/log4j/net/JMSAppender;->password:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljavax/jms/TopicConnectionFactory;->createTopicConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/jms/TopicConnection;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    .line 215
    :goto_3
    const-string v5, "Creating TopicSession, non-transactional, in AUTO_ACKNOWLEDGE mode."

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 217
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Ljavax/jms/TopicConnection;->createTopicSession(ZI)Ljavax/jms/TopicSession;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    .line 220
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Looking up topic name ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/log4j/net/JMSAppender;->topicBindingName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 221
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->topicBindingName:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lorg/apache/log4j/net/JMSAppender;->lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jms/Topic;

    .line 223
    .local v3, "topic":Ljavax/jms/Topic;
    const-string v5, "Creating TopicPublisher."

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 224
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    invoke-interface {v5, v3}, Ljavax/jms/TopicSession;->createPublisher(Ljavax/jms/Topic;)Ljavax/jms/TopicPublisher;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->topicPublisher:Ljavax/jms/TopicPublisher;

    .line 226
    const-string v5, "Starting TopicConnection."

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 227
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    invoke-interface {v5}, Ljavax/jms/Connection;->start()V

    .line 229
    invoke-interface {v2}, Ljavax/naming/Context;->close()V

    .line 234
    .end local v2    # "jndi":Ljavax/naming/Context;
    .end local v3    # "topic":Ljavax/jms/Topic;
    .end local v4    # "topicConnectionFactory":Ljavax/jms/TopicConnectionFactory;
    :goto_4
    return-void

    .line 184
    .restart local v1    # "env":Ljava/util/Properties;
    :cond_2
    const-string v5, "You have set InitialContextFactoryName option but not the ProviderURL. This is likely to cause problems."

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 230
    .end local v1    # "env":Ljava/util/Properties;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Error while activating options for appender named ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "]."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0, v8}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_4

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "env":Ljava/util/Properties;
    :cond_3
    :try_start_1
    const-string v5, "You have set SecurityPrincipalName option but not the SecurityCredentials. This is likely to cause problems."

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 202
    .end local v1    # "env":Ljava/util/Properties;
    :cond_4
    new-instance v2, Ljavax/naming/InitialContext;

    invoke-direct {v2}, Ljavax/naming/InitialContext;-><init>()V

    .restart local v2    # "jndi":Ljavax/naming/Context;
    goto/16 :goto_2

    .line 212
    .restart local v4    # "topicConnectionFactory":Ljavax/jms/TopicConnectionFactory;
    :cond_5
    invoke-interface {v4}, Ljavax/jms/TopicConnectionFactory;->createTopicConnection()Ljavax/jms/TopicConnection;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 5
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 294
    invoke-virtual {p0}, Lorg/apache/log4j/net/JMSAppender;->checkEntryConditions()Z

    move-result v2

    if-nez v2, :cond_0

    .line 309
    :goto_0
    return-void

    .line 299
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    invoke-interface {v2}, Ljavax/jms/Session;->createObjectMessage()Ljavax/jms/ObjectMessage;

    move-result-object v1

    .line 300
    .local v1, "msg":Ljavax/jms/ObjectMessage;
    iget-boolean v2, p0, Lorg/apache/log4j/net/JMSAppender;->locationInfo:Z

    if-eqz v2, :cond_1

    .line 301
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    .line 303
    :cond_1
    invoke-interface {v1, p1}, Ljavax/jms/ObjectMessage;->setObject(Ljava/io/Serializable;)V

    .line 304
    iget-object v2, p0, Lorg/apache/log4j/net/JMSAppender;->topicPublisher:Ljavax/jms/TopicPublisher;

    invoke-interface {v2, v1}, Ljavax/jms/TopicPublisher;->publish(Ljavax/jms/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    .end local v1    # "msg":Ljavax/jms/ObjectMessage;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Could not publish message in JMSAppender ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method protected checkEntryConditions()Z
    .locals 4

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 248
    .local v0, "fail":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    if-nez v1, :cond_1

    .line 249
    const-string v0, "No TopicConnection"

    .line 256
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 257
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " for JMSAppender named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    .line 258
    const/4 v1, 0x0

    .line 260
    :goto_1
    return v1

    .line 250
    :cond_1
    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    if-nez v1, :cond_2

    .line 251
    const-string v0, "No TopicSession"

    goto :goto_0

    .line 252
    :cond_2
    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicPublisher:Ljavax/jms/TopicPublisher;

    if-nez v1, :cond_0

    .line 253
    const-string v0, "No TopicPublisher"

    goto :goto_0

    .line 260
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public declared-synchronized close()V
    .locals 3

    .prologue
    const-string v1, "]."

    .line 270
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 288
    :goto_0
    monitor-exit p0

    return-void

    .line 273
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Closing appender ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 274
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    :try_start_2
    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    invoke-interface {v1}, Ljavax/jms/Session;->close()V

    .line 279
    :cond_1
    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    if-eqz v1, :cond_2

    .line 280
    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    invoke-interface {v1}, Ljavax/jms/Connection;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    :cond_2
    :goto_1
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicPublisher:Ljavax/jms/TopicPublisher;

    .line 286
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    .line 287
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 281
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error while closing JMSAppender ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getInitialContextFactoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->initialContextFactoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationInfo()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lorg/apache/log4j/net/JMSAppender;->locationInfo:Z

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->providerURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityCredentials()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->securityCredentials:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityPrincipalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->securityPrincipalName:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicBindingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicBindingName:Ljava/lang/String;

    return-object v0
.end method

.method protected getTopicConnection()Ljavax/jms/TopicConnection;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    return-object v0
.end method

.method public getTopicConnectionFactoryBindingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->tcfBindingName:Ljava/lang/String;

    return-object v0
.end method

.method protected getTopicPublisher()Ljavax/jms/TopicPublisher;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicPublisher:Ljavax/jms/TopicPublisher;

    return-object v0
.end method

.method protected getTopicSession()Ljavax/jms/TopicSession;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    return-object v0
.end method

.method getURLPkgPrefixes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->urlPkgPrefixes:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->userName:Ljava/lang/String;

    return-object v0
.end method

.method protected lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Ljavax/naming/Context;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 238
    :try_start_0
    invoke-interface {p1, p2}, Ljavax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/naming/NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljavax/naming/NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 241
    throw v0
.end method

.method public requiresLayout()Z
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public setInitialContextFactoryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "initialContextFactoryName"    # Ljava/lang/String;

    .prologue
    .line 330
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->initialContextFactoryName:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public setLocationInfo(Z)V
    .locals 0
    .param p1, "locationInfo"    # Z

    .prologue
    .line 398
    iput-boolean p1, p0, Lorg/apache/log4j/net/JMSAppender;->locationInfo:Z

    .line 399
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 389
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->password:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setProviderURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "providerURL"    # Ljava/lang/String;

    .prologue
    .line 338
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->providerURL:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public setSecurityCredentials(Ljava/lang/String;)V
    .locals 0
    .param p1, "securityCredentials"    # Ljava/lang/String;

    .prologue
    .line 354
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->securityCredentials:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setSecurityPrincipalName(Ljava/lang/String;)V
    .locals 0
    .param p1, "securityPrincipalName"    # Ljava/lang/String;

    .prologue
    .line 363
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->securityPrincipalName:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setTopicBindingName(Ljava/lang/String;)V
    .locals 0
    .param p1, "topicBindingName"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->topicBindingName:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setTopicConnectionFactoryBindingName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tcfBindingName"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->tcfBindingName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setURLPkgPrefixes(Ljava/lang/String;)V
    .locals 0
    .param p1, "urlPkgPrefixes"    # Ljava/lang/String;

    .prologue
    .line 346
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->urlPkgPrefixes:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 378
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->userName:Ljava/lang/String;

    .line 379
    return-void
.end method
