import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import * as logger from 'morgan';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  app.use(logger('dev'));

  await app.listen(80, () => {
    process.send?.('ready');
  });
}
bootstrap();
